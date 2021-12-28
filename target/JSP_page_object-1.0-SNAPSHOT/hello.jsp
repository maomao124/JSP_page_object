<%--
  Created by IntelliJ IDEA.
  Project name(项目名称)：JSP_page_object
  Author(作者）: mao
  Author QQ：1296193245
  GitHub：https://github.com/maomao124/
  Date(创建日期)： 2021/12/28
  Time(创建时间)： 13:59
  Description(描述)：
  JSP page 的实质是 java.lang.Object 对象，相当于 Java 中的 this 关键字。page 对象是指当前的 JSP 页面本身，在实际开发中并不常用。
page 对象的常用方法如下：
page 对象的常用方法
方  法	说  明
class getClass()	返回当前页面所在类
int hashCode()	返回当前页面的 hash 代码
String toString()	将当前页面所在类转换成字符串
boolean equals(Object obj)	比较对象和指定的对象是否相等
void copy (Object obj)	把对象复制到指定的对象中
Object clone()	复制对象
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    Object obj;
    obj = null;
%>
<h2>
    类：
    <%=page.getClass()%>
    <br/>
    当前类的hash码：
    <%=page.hashCode()%>
    <br/>
    toString:
    <%=page.toString()%>
    <br/>
    page和obj比较：
    <%=page.equals(obj)%>
    <br/>
    page和this比较：
    <%=page.equals(this)%>
    <br/>
</h2>

</body>
</html>
