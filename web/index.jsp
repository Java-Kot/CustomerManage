<%@ page import="java.util.ArrayList" %>
<%--
  Created by IntelliJ IDEA.
  User: conifer
  Date: 19/10/2018
  Time: 20:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Show List Customer</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" href="css.css">
</head>
<body>
<%!
    class Customer {
        private String name;
        private String dob;
        private String adress;
        private String avatar;

        public Customer(String name, String dob, String adress, String avatar) {
            this.adress = adress;
            this.avatar = avatar;
            this.dob = dob;
            this.name = name;
        }

        public String toString() {
            return "        <li class='list-group-item'>\n" +
                    "            <p>" + name + "</p>\n" +
                    "            <p>" + dob + "</p>\n" +
                    "            <p>" + adress + "</p>\n" +
                    "            <p class='avatar'><img src='" + avatar + "'></p>\n" +
                    "        </li>";
        }
    }
%>

<%
    ArrayList<Customer> customerArrayList = new ArrayList<Customer>();

    Customer customer1 = new Customer("Mai Văn Hoan", "1983-08-20", "Hà Nội", "https://cdn1.iconfinder.com/data/icons/ninja-things-1/1772/ninja-simple-512.png");
    Customer customer2 = new Customer("Nguyễn Văn Nam", "1983-08-21", "Bắc Giang", "https://cdn1.iconfinder.com/data/icons/ninja-things-1/1772/ninja-simple-512.png");
    Customer customer3 = new Customer("Nguyễn Thái Hòa", "1983-08-22", "Nam Định", "https://cdn1.iconfinder.com/data/icons/ninja-things-1/1772/ninja-simple-512.png");
    Customer customer4 = new Customer("Trần Đăng Khoa", "1983-08-17", "Hà Tây", "https://cdn1.iconfinder.com/data/icons/ninja-things-1/1772/ninja-simple-512.png");

    customerArrayList.add(customer1);
    customerArrayList.add(customer2);
    customerArrayList.add(customer3);
    customerArrayList.add(customer4);
%>
<div>
    <h1>Danh sách khách hàng</h1>
    <ul class="list-group">
        <li class="list-group-item active">
            <p>Tên</p>
            <p>Ngày sinh</p>
            <p>Địa chỉ</p>
            <p>Ảnh đại diện</p>
        </li>
<%
    for (Customer user : customerArrayList) {
        out.println(user.toString());
    }
%>
    </ul>
</div>
</body>
</html>
