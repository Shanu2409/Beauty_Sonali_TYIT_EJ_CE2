<%@page import="com.entity.Product_order"%>
<%@page import="java.util.List"%>
<%@page import="com.DAO.ProductOrderDAOImpl"%>
<%@page import="com.db.DbConnect"%>
<%@page import="com.entity.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>prinees All Orders</title>
        <%@include file="allCssAdmin.jsp" %>
        <style>
            thead {
                color: white;
            }
        </style>
    </head>
    <body>

        <%@include file="navbarAdmin.jsp" %>
        <c:if test="${empty userObj}">
            <c:redirect url="../Login.jsp" />
        </c:if>
        <div class="container">
            <div class="">
                <div class="p-4">
                    <div class="card mt-2">
                        <div class="p-2">
                            <h4 class="text-center">All Orders</h4>
                            <table class="table table-striped mt-3">
                                <thead class="bg-secondary text-white">
                                    <tr>
                                        <th scope="col">Order Id</th>
                                        <th scope="col">Name</th>
                                        <th scope="col">Product Name</th>
                                        <th scope="col">Owner</th>
                                        <th scope="col">Price</th>
                                        <th scope="col">Payment Type</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>

                                        <%
                                            User u = (User) session.getAttribute("userObj");
                                            ProductOrderDAOImpl dao = new ProductOrderDAOImpl(DbConnect.getCon());
                                            
                                            List<Product_order> plist = dao.getOrders();
                                            
                                            for(Product_order p : plist) {
                                        %>
                                        <th scope="row"><%= p.getOrder_id()%></th>
                                        <td><%= p.getUserName()%></td>
                                        <td><%= p.getProductName()%></td>
                                        <td><%= p.getOwner()%></td>
                                        <td><%= p.getPrice()%></td>
                                        <td><%= p.getPayment()%></td>
                                    </tr>
                                    <% } %>

                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
