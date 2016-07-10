package cn.phoenix.evacafe.dao;

import cn.phoenix.evacafe.domain.Orders;
import cn.phoenix.evacafe.domain.Product;
import cn.phoenix.evacafe.domain.User;
import cn.phoenix.evacafe.util.ConfigUtils;
import cn.phoenix.evacafe.util.DaoUtils;
import org.junit.Test;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Phoenix on 2016/7/8.
 */
public class MySqlUserDao implements UserDao {

    static {
        try {
            Class.forName(ConfigUtils.getDriverName());
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void updateUserMoney(String username, double totalMoney) {
        String updateSql = "update User set rest=? where username=?";
        Connection connection = null;
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        try {
            connection = DriverManager.getConnection(ConfigUtils.getConnecitonUrl(), ConfigUtils.getUsername(), ConfigUtils.getPassword());
            statement = connection.prepareStatement(updateSql);
            statement.setDouble(1, totalMoney);
            statement.setString(2, username);
            statement.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        } finally {
            DaoUtils.close(connection, statement, resultSet);
        }
    }

    @Override
    public void updateOrderStatus(int orderId, String status) {
        String updateSql = "update Orders set status=?,isPaid = ? where orderId=?";
        Connection connection = null;
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        try {
            connection = DriverManager.getConnection(ConfigUtils.getConnecitonUrl(), ConfigUtils.getUsername(), ConfigUtils.getPassword());
            statement = connection.prepareStatement(updateSql);
            statement.setString(1, status);
            statement.setInt(2, 1);
            statement.setInt(3, orderId);
            statement.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        } finally {
            DaoUtils.close(connection, statement, resultSet);
        }
    }

    @Override
    public void updateOrderEvaluate(int orderId) {
        String updateSql = "update Orders set isEvaluated = 1 where orderId=?";
        Connection connection = null;
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        try {
            connection = DriverManager.getConnection(ConfigUtils.getConnecitonUrl(), ConfigUtils.getUsername(), ConfigUtils.getPassword());
            statement = connection.prepareStatement(updateSql);
            statement.setInt(1, orderId);
            statement.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        } finally {
            DaoUtils.close(connection, statement, resultSet);
        }
    }

    @Override
    public void increProdEvaluation(int prodId, String type) {

        String querySql = "select " + type + " from Product where productId = ?";

        Connection connection = null;
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        PreparedStatement statement1 = null;
        try {
            connection = DriverManager.getConnection(ConfigUtils.getConnecitonUrl(), ConfigUtils.getUsername(), ConfigUtils.getPassword());
            statement = connection.prepareStatement(querySql);
            statement.setInt(1, prodId);
            resultSet = statement.executeQuery();
            if (resultSet.next()) {
                int times = resultSet.getInt(type);
                times++;
                statement1 = connection.prepareStatement("update Product set " + type + "=? where productId=?");
                statement1.setInt(1, times);
                statement1.setInt(2, prodId);
                statement1.executeUpdate();
            }
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        } finally {
            DaoUtils.close(null, statement, resultSet);
            DaoUtils.close(connection, statement1, null);
        }
    }

    @Override
    public int findProdIdByOrderId(int orderId) {
        String updateSql = "select Product.ProductId from Product,Orders where Orders.orderId = ? and orders.productId = product.productId";
        Connection connection = null;
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        try {
            connection = DriverManager.getConnection(ConfigUtils.getConnecitonUrl(), ConfigUtils.getUsername(), ConfigUtils.getPassword());
            statement = connection.prepareStatement(updateSql);
            statement.setInt(1, orderId);
            resultSet = statement.executeQuery();
            if (resultSet.next()) {
                return resultSet.getInt("ProductId");
            }
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        } finally {
            DaoUtils.close(connection, statement, resultSet);
        }
        return 0;
    }

    private Product createProd(ResultSet resultSet) throws SQLException {
        Product prod = new Product();
        prod.setProductId(resultSet.getInt("productId"));
        prod.setProductName(resultSet.getString("productName"));
        prod.setType(resultSet.getString("type"));
        prod.setBrand(resultSet.getString("brand"));
        prod.setPackaging(resultSet.getString("packaging"));
        prod.setLevel(resultSet.getString("level"));
        prod.setIntroduction(resultSet.getString("introduction"));
        prod.setProducingArea(resultSet.getString("producingArea"));
        prod.setQuantity(resultSet.getInt("quantity"));
        prod.setPrice(resultSet.getDouble("price"));
        prod.setTast(resultSet.getString("tast"));
        prod.setCupSize(resultSet.getString("cupSize"));
        prod.setConcentrations(resultSet.getString("concentrations"));
        prod.setMaterial(resultSet.getString("material"));
        prod.setWeight(resultSet.getDouble("weight"));
        prod.setCapacity(resultSet.getDouble("capacity"));
        prod.setSugar(resultSet.getString("sugar"));
        prod.setContainsMilk(resultSet.getInt("containsMilk") != 0);
        prod.setSpice(resultSet.getString("spice"));
        prod.setMakerType(resultSet.getString("makerType"));
        prod.setPower(resultSet.getInt("power"));
        prod.setGood(resultSet.getInt("good"));
        prod.setOrdinary(resultSet.getInt("ordinary"));
        prod.setBad(resultSet.getInt("bad"));

        List<String> paths = new ArrayList<String>();
        paths.add(resultSet.getString("path"));
        prod.setPaths(paths);
        return prod;
    }

    @Test
    public void test() {
        findProdById(1);
    }


    @Override
    public Product findProdById(int prodId) {
        Connection connection = null;
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        try {
            connection = DriverManager.getConnection(ConfigUtils.getConnecitonUrl(), ConfigUtils.getUsername(), ConfigUtils.getPassword());
            statement = connection.prepareStatement("select * from Product,Pics where product.productId = ? and product.productId = pics.productId");
            statement.setInt(1, prodId);
            resultSet = statement.executeQuery();
            if (resultSet.next()) {
                Product prod = createProd(resultSet);
                List<String> paths = prod.getPaths();
                while (resultSet.next()) {
                    paths.add(resultSet.getString("path"));
                }
                return prod;
            } else {
                return null;
            }
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        } finally {
            DaoUtils.close(connection, statement, resultSet);
        }
    }

    @Override
    public User findUserByNAndP(String username, String password) {
        User user = findUserByName(username);
        if (user == null) {
            return null;
        } else if (user.getPassword().equals(password)) {
            return user;
        } else {
            return null;
        }
    }

    @Override
    public User findUserByName(String username) {
        Connection connection = null;
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        try {
            connection = DriverManager.getConnection(ConfigUtils.getConnecitonUrl(), ConfigUtils.getUsername(), ConfigUtils.getPassword());
            statement = connection.prepareStatement("select * from user where username=?");
            statement.setString(1, username);
            resultSet = statement.executeQuery();
            if (resultSet.next()) {
                User user = new User();
                user.setUsername(resultSet.getString("username"));
                user.setPassword(resultSet.getString("password"));
                user.setRest(resultSet.getDouble("rest"));
                user.setBuyTimes(resultSet.getInt("buyTimes"));
                user.setWaitToAccept(resultSet.getInt("waitToAccept"));
                user.setWaitToPay(resultSet.getInt("waitToPay"));
                user.setPhoneNumber(resultSet.getString("phoneNumber"));
                user.setEmail(resultSet.getString("email"));
                return user;
            } else {
                return null;
            }
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        } finally {
            DaoUtils.close(connection, statement, resultSet);
        }
    }

    @Override
    public User addUser(String username, String password, String phoneNumber) {
        String insertSql = "insert into user values (?,?,?,?,?,?,?)";
        Connection connection = null;
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        try {
            connection = DriverManager.getConnection(ConfigUtils.getConnecitonUrl(), ConfigUtils.getUsername(), ConfigUtils.getPassword());
            statement = connection.prepareStatement(insertSql);
            //用户名
            statement.setString(1, username);
            //密码
            statement.setString(2, password);
            //余额
            statement.setDouble(3, 0f);
            //购买物品次数
            statement.setInt(4, 0);
            //待收货次数
            statement.setInt(5, 0);
            //待支付次数
            statement.setInt(6, 0);
            //电话号码
            statement.setString(7, phoneNumber);
            int rows = statement.executeUpdate();
            if (rows == 0) {
                return null;
            } else {
                User user = new User();
                user.setUsername(username);
                user.setPassword(password);
                user.setPhoneNumber(phoneNumber);
                user.setBuyTimes(0);
                user.setWaitToPay(0);
                user.setWaitToAccept(0);
                user.setRest(0);
                return user;
            }
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        } finally {
            DaoUtils.close(connection, statement, resultSet);
        }
    }

    @Override
    public List<Orders> findOrdersByName(String username) {
        String selectSql = "select Orders.isPaid,Product.productName,Orders.productId,orderId,status,productQuantity,isEvaluated,time,address,Product.price,Pics.path from Orders,Pics,Product where Orders.username=? and Orders.productId = Product.productId and product.productId = pics.productId";

        Connection connection = null;
        PreparedStatement stat = null;
        ResultSet resultSet = null;

        try {
            connection = DriverManager.getConnection(ConfigUtils.getConnecitonUrl(), ConfigUtils.getUsername(), ConfigUtils.getPassword());
            stat = connection.prepareStatement(selectSql);
            stat.setString(1, username);
            resultSet = stat.executeQuery();

            List<Orders> orderses = new ArrayList<Orders>();
            Orders orders = null;
            int productId = -1;
            while (resultSet.next()) {
                if (resultSet.getInt("productId") != productId) {
                    productId = resultSet.getInt("productId");
                    orders = new Orders();
                    orders.setAddress(resultSet.getString("address"));
                    orders.setIsEvaluated(resultSet.getByte("isEvaluated") != 0);
                    orders.setOrderId(resultSet.getInt("orderId"));
                    orders.setPath(resultSet.getString("path"));
                    orders.setPrice(resultSet.getDouble("price"));
                    orders.setProductId(resultSet.getInt("productId"));
                    orders.setProductName(resultSet.getString("productName"));
                    orders.setProductQuantity(resultSet.getInt("productQuantity"));
                    orders.setStatus(resultSet.getString("status"));
                    orders.setUsername(username);
                    orders.setTime(resultSet.getString("time"));
                    orders.setIsPaid(resultSet.getByte("isPaid") != 0);
                    orderses.add(orders);
                }
            }
            System.out.println("ss");
            return orderses;
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        } finally {
            DaoUtils.close(connection, stat, resultSet);
        }
    }

    @Override
    public Orders findOrderById(int orderId) {

        String selectSql = "select Orders.isPaid,Product.productName,Orders.productId,orderId,status,productQuantity,isEvaluated,time,address,Product.price,Pics.path from Orders,Pics,Product where Orders.orderId=? and Orders.productId = Product.productId and product.productId = pics.productId";

        Connection connection = null;
        PreparedStatement stat = null;
        ResultSet resultSet = null;

        try {
            connection = DriverManager.getConnection(ConfigUtils.getConnecitonUrl(), ConfigUtils.getUsername(), ConfigUtils.getPassword());
            stat = connection.prepareStatement(selectSql);
            stat.setInt(1, orderId);
            resultSet = stat.executeQuery();
            if (resultSet.next()) {
                Orders orders = null;
                orders = new Orders();
                orders.setAddress(resultSet.getString("address"));
                orders.setIsEvaluated(resultSet.getByte("isEvaluated") != 0);
                orders.setOrderId(resultSet.getInt("orderId"));
                orders.setPath(resultSet.getString("path"));
                orders.setPrice(resultSet.getDouble("price"));
                orders.setProductId(resultSet.getInt("productId"));
                orders.setProductName(resultSet.getString("productName"));
                orders.setProductQuantity(resultSet.getInt("productQuantity"));
                orders.setStatus(resultSet.getString("status"));
                //orders.setUsername(username);
                orders.setTime(resultSet.getString("time"));
                orders.setIsPaid(resultSet.getByte("isPaid") != 0);
                return orders;
            }
            return null;
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        } finally {
            DaoUtils.close(connection, stat, resultSet);
        }
    }
}
