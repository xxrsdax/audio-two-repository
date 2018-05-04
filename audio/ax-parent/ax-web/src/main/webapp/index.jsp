<%--
  Created by IntelliJ IDEA.
  User: dell3020mt-50
  Date: 2018/5/3
  Time: 18:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>测试</title>
    <!-- 导入jquery核心类库 -->
    <script type="text/javascript"
            src="js/jquery-1.8.3.js"></script>

</head>
<body>
<input type="button" value="切换" id="change">
<select id="musicMenu">

</select>
<audio id="audio" src="/audioFile/1.ogg" loop autoplay   >
    此浏览器的版本不支持或该浏览器不支持
</audio>
<script type="text/javascript">
    $(function () {
        $("#change").click(function () {
            var music2  =  $("#musicMenu").val();  //获取select中被选中的option的value

            $("#audio").attr("src","/audioFile/"+music2);  //设置audio中的src的属性
        });

        $.post("json/aduioFilename/audioFilename.json",function (data) {
            for(var  i = 0;i<data.length ;i++) {
                $("#musicMenu").append('<option value="'+data[i].value+'">'+data[i].text+'</option>');
            }
        },"json");
    });
</script>
</body>
</html>
