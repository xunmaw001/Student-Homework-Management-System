<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="zh-cn">


<head>
    <%@ include file="../../static/head.jsp" %>
    <!-- font-awesome -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css">
</head>
<style>

</style>
<body>
<!-- Pre Loader -->
<div class="loading">
    <div class="spinner">
        <div class="double-bounce1"></div>
        <div class="double-bounce2"></div>
    </div>
</div>
<!--/Pre Loader -->
<div class="wrapper">
    <!-- Page Content -->
    <div id="content">
        <!-- Top Navigation -->
        <%@ include file="../../static/topNav.jsp" %>
        <!-- Menu -->
        <div class="container menu-nav">
            <nav class="navbar navbar-expand-lg lochana-bg text-white">
                <button class="navbar-toggler" type="button" data-toggle="collapse"
                        data-target="#navbarSupportedContent"
                        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="ti-menu text-white"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul id="navUl" class="navbar-nav mr-auto">
                    </ul>
                </div>
            </nav>
        </div>
        <!-- /Menu -->
        <!-- Breadcrumb -->
        <!-- Page Title -->
        <div class="container mt-0">
            <div class="row breadcrumb-bar">
                <div class="col-md-6">
                    <h3 class="block-title">学生作业管理</h3>
                </div>
                <div class="col-md-6">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="${pageContext.request.contextPath}/index.jsp">
                                <span class="ti-home"></span>
                            </a>
                        </li>
                        <li class="breadcrumb-item">学生作业管理</li>
                        <li class="breadcrumb-item active">学生作业列表</li>
                    </ol>
                </div>
            </div>
        </div>
        <!-- /Page Title -->

        <!-- /Breadcrumb -->
        <!-- Main Content -->
        <div class="container">

            <div class="row">
                <!-- Widget Item -->
                <div class="col-md-12">
                    <div class="widget-area-2 lochana-box-shadow">
                        <h3 class="widget-title">学生作业列表</h3>
                        <div class="table-responsive mb-3">
                            <div class="col-sm-12">
                                                                                                                                                                                                                                                                                                                                                                
                                                                                                                                                                                                 
                                            <label>
                                                班级名
                                                <input type="text" id="banjiNameSearch"  style="width: 120px;" class="form-control form-control-sm"
                                                       placeholder="班级名" aria-controls="tableId">
                                            </label>
                                            <label>
                                                课程名
                                                <input type="text" id="kechengNameSearch"  style="width: 120px;" class="form-control form-control-sm"
                                                       placeholder="课程名" aria-controls="tableId">
                                            </label>
                                            <label>
                                                老师名
                                                <input type="text" id="laoshiNameSearch"  style="width: 120px;" class="form-control form-control-sm"
                                                       placeholder="老师名" aria-controls="tableId">
                                            </label>
                                                                                                                                                                                                                                                                                                                                                                                                 
                                            <label>
                                                学生名
                                                <input type="text" id="nameSearch"  style="width: 120px;" class="form-control form-control-sm"
                                                       placeholder="学生名" aria-controls="tableId">
                                            </label>

                                            <label>
                                                作业名字
                                                <input type="text" id="zuoyeNameSearch"  style="width: 120px;" class="form-control form-control-sm"
                                                       placeholder="作业名字" aria-controls="tableId">
                                            </label>
                                                 
                                            <label>
                                                学生手机号
                                                <input type="text" id="phoneSearch"  style="width: 120px;" class="form-control form-control-sm"
                                                       placeholder="手机号" aria-controls="tableId">
                                            </label>
                                                                                                                                                                                                                                                 
                                            <%--<label>--%>
                                                <%--班级--%>
                                                <%--<select name="banjiTypesSelectSearch"  style="width: 150px;" id="banjiTypesSelectSearch" class="form-control form-control-sm"--%>
                                                        <%--aria-controls="tableId">--%>
                                                <%--</select>--%>
                                            <%--</label>--%>
                                                                                                                                                                                                 

                                <button onclick="search()" type="button" class="btn btn-primary">查询</button>
                                <%--<button onclick="add()" type="button" class="btn btn-success 新增">添加</button>--%>
                                <button onclick="graph()" type="button" class="btn btn-success 报表">报表</button>
                                <button onclick="deleteMore()" type="button" class="btn btn-danger 删除">批量删除</button>
                            </div>
                            <table id="tableId" class="table table-bordered table-striped">
                                <thead>
                                <tr>
                                    <th class="no-sort" style="min-width: 35px;">
                                        <div class="custom-control custom-checkbox">
                                            <input class="custom-control-input" type="checkbox" id="select-all"
                                                   onclick="chooseAll()">
                                            <label class="custom-control-label" for="select-all"></label>
                                        </div>
                                    </th>
                                    <th >班级名</th>
                                    <th >课程名</th>
                                    <th >老师姓名</th>
                                    <th >学生姓名</th>
                                    <th >学生手机号</th>
                                    <th >作业名字</th>
                                    <th >布置的作业</th>
                                    <th >作业详情</th>
                                    <th >发布作业时间</th>
                                    <th >作业截止时间</th>
                                    <th >学生完成作业</th>
                                    <th >学生完成作业时间</th>
                                    <th >老师批改作业</th>
                                    <th >老师批改作业备注</th>
                                    <th >老师批改作业时间</th>
                                    <th >学生作业分数</th>
                                    <th>操作</th>
                                </tr>
                                </thead>
                                <tbody id="thisTbody">
                                </tbody>
                            </table>
                            <div class="col-md-6 col-sm-3">
                                <div class="dataTables_length" id="tableId_length">

                                    <select name="tableId_length" aria-controls="tableId" id="selectPageSize"
                                            onchange="changePageSize()">
                                        <option value="10">10</option>
                                        <option value="25">25</option>
                                        <option value="50">50</option>
                                        <option value="100">100</option>
                                    </select>
                                    条 每页

                                </div>
                            </div>
                            <nav aria-label="Page navigation example">
                                <ul class="pagination justify-content-end">
                                    <li class="page-item" id="tableId_previous" onclick="pageNumChange('pre')">
                                        <a class="page-link" href="#" tabindex="-1">上一页</a>
                                    </li>

                                    <li class="page-item" id="tableId_next" onclick="pageNumChange('next')">
                                        <a class="page-link" href="#">下一页</a>
                                    </li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
                <!-- /Widget Item -->
            </div>
        </div>
        <!-- /Main Content -->

    </div>
    <!-- /Page Content -->
</div>
<!-- Back to Top -->
<a id="back-to-top" href="#" class="back-to-top">
    <span class="ti-angle-up"></span>
</a>
<!-- /Back to Top -->
<%@ include file="../../static/foot.jsp" %>
<script language="javascript" type="text/javascript"
        src="${pageContext.request.contextPath}/resources/My97DatePicker/WdatePicker.js"></script>

<script>
    <%@ include file="../../utils/menu.jsp"%>
            <%@ include file="../../static/setMenu.js"%>
            <%@ include file="../../utils/baseUrl.jsp"%>
            <%@ include file="../../static/getRoleButtons.js"%>
            <%@ include file="../../static/crossBtnControl.js"%>
    var tableName = "xueshengZuoye";
    var pageType = "list";
    var searchForm = {key: ""};
    var pageIndex = 1;
    var pageSize = 10;
    var totalPage = 0;
    var dataList = [];
    var sortColumn = '';
    var sortOrder = '';
    var ids = [];
    var checkAll = false;

     var banjiTypesOptions = [];


    function init() {
        // 满足条件渲染提醒接口
    }

    // 改变每页记录条数
    function changePageSize() {
        var selection = document.getElementById('selectPageSize');
        var index = selection.selectedIndex;
        pageSize = selection.options[index].value;
        getDataList();
    }



    // 查询
    function search() {
        searchForm = {key: ""};

        <!-- 级联表的级联字典表 -->
                                                                                 
        //班级名
        var banjiNameSearchInput = $('#banjiNameSearch');
        if( banjiNameSearchInput != null){
            if (banjiNameSearchInput.val() != null && banjiNameSearchInput.val() != '') {
                searchForm.banjiName = $('#banjiNameSearch').val();
            }
        }

        //课程名
        var kechengNameSearchInput = $('#kechengNameSearch');
        if( kechengNameSearchInput != null){
            if (kechengNameSearchInput.val() != null && kechengNameSearchInput.val() != '') {
                searchForm.kechengName = $('#kechengNameSearch').val();
            }
        }

        //老师姓名
        var laoshiNameSearchInput = $('#laoshiNameSearch');
        if( laoshiNameSearchInput != null){
            if (laoshiNameSearchInput.val() != null && laoshiNameSearchInput.val() != '') {
                searchForm.laoshiName = $('#laoshiNameSearch').val();
            }
        }

        //学生姓名
        var nameSearchInput = $('#nameSearch');
        if( nameSearchInput != null){
            if (nameSearchInput.val() != null && nameSearchInput.val() != '') {
                searchForm.name = $('#nameSearch').val();
            }
        }

        //学生作业名字
        var zuoyeNameSearchInput = $('#zuoyeNameSearch');
        if( zuoyeNameSearchInput != null){
            if (zuoyeNameSearchInput.val() != null && zuoyeNameSearchInput.val() != '') {
                searchForm.zuoyeName = $('#zuoyeNameSearch').val();
            }
        }

        //手机号
        var phoneSearchInput = $('#phoneSearch');
        if( phoneSearchInput != null) {
            if (phoneSearchInput.val() != null && phoneSearchInput.val() != '') {
                searchForm.phone = $('#phoneSearch').val();
            }
        }
    <!-- 本表的查询条件 -->
        getDataList();
    }

    // 获取数据列表
    function getDataList() {
        http("xueshengZuoye/page", "GET", {
            page: pageIndex,
            limit: pageSize,
            sort: sortColumn,
            order: sortOrder,
            //本表的
            //级联表的
            banjiName: searchForm.banjiName,
            kechengName: searchForm.kechengName,
            laoshiName: searchForm.laoshiName,
            name: searchForm.name, // 学生名
            phone: searchForm.phone, // 学生手机号
            zuoyeName: searchForm.zuoyeName,


        }, (res) => {
            if(res.code == 0) {
                clear();
                $("#thisTbody").html("");
                dataList = res.data.list;
                totalPage = res.data.totalPage;
                for (var i = 0; i < dataList.length; i++) { //遍历一下表格数据  
                    var trow = setDataRow(dataList[i], i); //定义一个方法,返回tr数据 
                    $('#thisTbody').append(trow);
                }
                pagination(); //渲染翻页组件
                getRoleButtons();// 权限按钮控制
            }
        });
    }

    // 渲染表格数据
    function setDataRow(item, number) {
        //创建行 
        var row = document.createElement('tr');
        row.setAttribute('class', 'useOnce');
        //创建勾选框
        var checkbox = document.createElement('td');
        var checkboxDiv = document.createElement('div');
        checkboxDiv.setAttribute("class", "custom-control custom-checkbox");
        var checkboxInput = document.createElement('input');
        checkboxInput.setAttribute("class", "custom-control-input");
        checkboxInput.setAttribute("type", "checkbox");
        checkboxInput.setAttribute('name', 'chk');
        checkboxInput.setAttribute('value', item.id);
        checkboxInput.setAttribute("id", number);
        checkboxDiv.appendChild(checkboxInput);
        var checkboxLabel = document.createElement('label');
        checkboxLabel.setAttribute("class", "custom-control-label");
        checkboxLabel.setAttribute("for", number);
        checkboxDiv.appendChild(checkboxLabel);
        checkbox.appendChild(checkboxDiv);
        row.appendChild(checkbox)


                //班级名
        var banjiNameCell = document.createElement('td');
        banjiNameCell.innerHTML = item.banjiName;
        row.appendChild(banjiNameCell);


                //课程名
        var kechengNameCell = document.createElement('td');
        kechengNameCell.innerHTML = item.kechengName;
        row.appendChild(kechengNameCell);


                //老师名
        var laoshiNameCell = document.createElement('td');
        laoshiNameCell.innerHTML = item.laoshiName;
        row.appendChild(laoshiNameCell);

                //姓名
        var nameCell = document.createElement('td');
        nameCell.innerHTML = item.name;
        row.appendChild(nameCell);


                //手机号
        var phoneCell = document.createElement('td');
        phoneCell.innerHTML = item.phone;
        row.appendChild(phoneCell);


                //学生作业名字
        var zuoyeNameCell = document.createElement('td');
        zuoyeNameCell.innerHTML = item.zuoyeName;
        row.appendChild(zuoyeNameCell);


                //布置的学生作业
        var zuoyeFileCell = document.createElement('td');
        if(item.zuoyeFile ==null || item.zuoyeFile == '' || item.zuoyeFile == 'null'){
                zuoyeFileCell.innerHTML = '没有布置的学生作业';
        }else {
            var zuoyeFileFile = document.createElement('button');
                zuoyeFileFile.innerHTML = '布置的学生作业下载';
            var zuoyeFileFileAttr = "download('" + item.zuoyeFile + "')"
                zuoyeFileFile.setAttribute('onclick',zuoyeFileFileAttr);
                zuoyeFileCell.appendChild(zuoyeFileFile);
        }
        row.appendChild(zuoyeFileCell);


                //学生作业详情
        var zuoyeContentCell = document.createElement('td');
        //如果图文详情包含图片
        if (item.zuoyeContent && item.zuoyeContent.indexOf('img') != -1) {
            //暂时只考虑图片+文字 和 文字+图片的情况
            var beginIndex = item.zuoyeContent.indexOf('<img');
            var endIndex = item.zuoyeContent.indexOf('>');
                zuoyeContentCell.innerHTML = item.zuoyeContent.substring(beginIndex, endIndex + 1).replace("img", "img width='100' height='100'");
        } else {
            if (item.zuoyeContent != null && item.zuoyeContent != "" && item.zuoyeContent.length >= 11) {
                    zuoyeContentCell.innerHTML = item.zuoyeContent.substring(0, 10) + "...";
            } else {
                    zuoyeContentCell.innerHTML = item.zuoyeContent;
            }
        }
        row.appendChild(zuoyeContentCell);


                //发布学生作业时间
        var insertTimeCell = document.createElement('td');
        insertTimeCell.innerHTML = item.insertTime;
        row.appendChild(insertTimeCell);


                //学生作业截止时间
        var endTimeCell = document.createElement('td');
        endTimeCell.innerHTML = item.endTime;
        row.appendChild(endTimeCell);



            //学生完成学生作业
        var xueshengZuoyeFileCell = document.createElement('td');
        if(item.xueshengZuoyeFile ==null || item.xueshengZuoyeFile == '' || item.xueshengZuoyeFile == 'null'){
                xueshengZuoyeFileCell.innerHTML = '学生没有完成学生作业';
        }else {
            var xueshengZuoyeFileFile = document.createElement('button');
                xueshengZuoyeFileFile.innerHTML = '下载';
            var xueshengZuoyeFileFileAttr = "download('" + item.xueshengZuoyeFile + "')"
                xueshengZuoyeFileFile.setAttribute('onclick',xueshengZuoyeFileFileAttr);
                xueshengZuoyeFileCell.appendChild(xueshengZuoyeFileFile);
        }
        row.appendChild(xueshengZuoyeFileCell);


        //学生完成学生作业时间
        var xueshengZuoyeTimeCell = document.createElement('td');
        xueshengZuoyeTimeCell.innerHTML = item.xueshengZuoyeTime;
        row.appendChild(xueshengZuoyeTimeCell);


            //老师批改学生作业
        var flag=false;
        var laoshiZuoyeFileCell = document.createElement('td');
        if(item.laoshiZuoyeFile ==null || item.laoshiZuoyeFile == '' || item.laoshiZuoyeFile == 'null'){
                laoshiZuoyeFileCell.innerHTML = '老师没有批改学生作业';
                flag=true;
        }else {
            var laoshiZuoyeFileFile = document.createElement('button');
                laoshiZuoyeFileFile.innerHTML = '下载';
            var laoshiZuoyeFileFileAttr = "download('" + item.laoshiZuoyeFile + "')"
                laoshiZuoyeFileFile.setAttribute('onclick',laoshiZuoyeFileFileAttr);
                laoshiZuoyeFileCell.appendChild(laoshiZuoyeFileFile);
        }
        row.appendChild(laoshiZuoyeFileCell);


            //老师批改学生作业备注
        var laoshiZuoyeContentCell = document.createElement('td');
        //如果图文详情包含图片
        if (item.laoshiZuoyeContent && item.laoshiZuoyeContent.indexOf('img') != -1) {
            //暂时只考虑图片+文字 和 文字+图片的情况
            var beginIndex = item.laoshiZuoyeContent.indexOf('<img');
            var endIndex = item.laoshiZuoyeContent.indexOf('>');
                laoshiZuoyeContentCell.innerHTML = item.laoshiZuoyeContent.substring(beginIndex, endIndex + 1).replace("img", "img width='100' height='100'");
        } else {
            if (item.laoshiZuoyeContent != null && item.laoshiZuoyeContent != "" && item.laoshiZuoyeContent.length >= 11) {
                    laoshiZuoyeContentCell.innerHTML = item.laoshiZuoyeContent.substring(0, 10) + "...";
            } else {
                    laoshiZuoyeContentCell.innerHTML = item.laoshiZuoyeContent;
            }
        }
        row.appendChild(laoshiZuoyeContentCell);


        //老师批改学生作业时间
        var laoshiZuoyeTimeCell = document.createElement('td');
        laoshiZuoyeTimeCell.innerHTML = item.laoshiZuoyeTime;
        row.appendChild(laoshiZuoyeTimeCell);


        //学生作业分数
        var zuoyeNumberCell = document.createElement('td');
        zuoyeNumberCell.innerHTML = item.zuoyeNumber;
        row.appendChild(zuoyeNumberCell);



        //每行按钮
        var btnGroup = document.createElement('td');

        //详情按钮
        var detailBtn = document.createElement('button');
        var detailAttr = "detail(" + item.id + ')';
        detailBtn.setAttribute("type", "button");
        detailBtn.setAttribute("class", "btn btn-info btn-sm 查看");
        detailBtn.setAttribute("onclick", detailAttr);
        detailBtn.innerHTML = "查看"
        btnGroup.appendChild(detailBtn)
        //修改按钮

        if(window.sessionStorage.getItem('role') == '用户' && flag){ //权限为学生,并且老师没有批改过作业,允许重复修改
            var editBtn = document.createElement('button');
            var editAttr = 'edit(' + item.id + ')';
            editBtn.setAttribute("type", "button");
            editBtn.setAttribute("class", "btn btn-warning btn-sm 修改");
            editBtn.setAttribute("onclick", editAttr);
            editBtn.innerHTML = "回答";
            btnGroup.appendChild(editBtn);
        }else if(window.sessionStorage.getItem('role') == '老师'){
            var editBtn = document.createElement('button');
            var editAttr = 'edit(' + item.id + ')';
            editBtn.setAttribute("type", "button");
            editBtn.setAttribute("class", "btn btn-warning btn-sm 修改");
            editBtn.setAttribute("onclick", editAttr);
            editBtn.innerHTML = "批改";
            btnGroup.appendChild(editBtn);
        }
        //删除按钮
        var deleteBtn = document.createElement('button');
        var deleteAttr = 'remove(' + item.id + ')';
        deleteBtn.setAttribute("type", "button");
        deleteBtn.setAttribute("class", "btn btn-danger btn-sm 删除");
        deleteBtn.setAttribute("onclick", deleteAttr);
        deleteBtn.innerHTML = "删除"
        btnGroup.appendChild(deleteBtn)

        row.appendChild(btnGroup)
        return row;
    }


    // 翻页
    function pageNumChange(val) {
        if (val == 'pre') {
            pageIndex--;
        } else if (val == 'next') {
            pageIndex++;
        } else {
            pageIndex = val;
        }
        getDataList();
    }

    // 下载
    function download(url) {
        window.open(url);
    }

    // 渲染翻页组件
    function pagination() {
        var beginIndex = pageIndex;
        var endIndex = pageIndex;
        var point = 4;
        //计算页码
        for (var i = 0; i < 3; i++) {
            if (endIndex == totalPage) {
                break;
            }
            endIndex++;
            point--;
        }
        for (var i = 0; i < 3; i++) {
            if (beginIndex == 1) {
                break;
            }
            beginIndex--;
            point--;
        }
        if (point > 0) {
            while (point > 0) {
                if (endIndex == totalPage) {
                    break;
                }
                endIndex++;
                point--;
            }
            while (point > 0) {
                if (beginIndex == 1) {
                    break;
                }
                beginIndex--;
                point--
            }
        }
        // 是否显示 前一页 按钮
        if (pageIndex > 1) {
            $('#tableId_previous').show();
        } else {
            $('#tableId_previous').hide();
        }
        // 渲染页码按钮
        for (var i = beginIndex; i <= endIndex; i++) {
            var pageNum = document.createElement('li');
            pageNum.setAttribute('onclick', "pageNumChange(" + i + ")");
            if (pageIndex == i) {
                pageNum.setAttribute('class', 'paginate_button page-item active useOnce');
            } else {
                pageNum.setAttribute('class', 'paginate_button page-item useOnce');
            }
            var pageHref = document.createElement('a');
            pageHref.setAttribute('class', 'page-link');
            pageHref.setAttribute('href', '#');
            pageHref.setAttribute('aria-controls', 'tableId');
            pageHref.setAttribute('data-dt-idx', i);
            pageHref.setAttribute('tabindex', 0);
            pageHref.innerHTML = i;
            pageNum.appendChild(pageHref);
            $('#tableId_next').before(pageNum);
        }
        // 是否显示 下一页 按钮
        if (pageIndex < totalPage) {
            $('#tableId_next').show();
            $('#tableId_next a').attr('data-dt-idx', endIndex + 1);
        } else {
            $('#tableId_next').hide();
        }
        var pageNumInfo = "当前第 " + pageIndex + " 页，共 " + totalPage + " 页";
        $('#tableId_info').html(pageNumInfo);
    }

    // 跳转到指定页
    function toThatPage() {
        //var index = document.getElementById('pageIndexInput').value;
        if (index < 0 || index > totalPage) {
            alert('请输入正确的页码');
        } else {
            pageNumChange(index);
        }
    }

    // 全选/全不选
    function chooseAll() {
        checkAll = !checkAll;
        var boxs = document.getElementsByName("chk");
        for (var i = 0; i < boxs.length; i++) {
            boxs[i].checked = checkAll;
        }
    }

    // 批量删除
    function deleteMore() {
        ids = []
        var boxs = document.getElementsByName("chk");
        for (var i = 0; i < boxs.length; i++) {
            if (boxs[i].checked) {
                ids.push(boxs[i].value)
            }
        }
        if (ids.length == 0) {
            alert('请勾选要删除的记录');
        } else {
            remove(ids);
        }
    }

    // 删除
    function remove(id) {
        var mymessage = confirm("真的要删除吗？");
        if (mymessage == true) {
            var paramArray = [];
            if (id == ids) {
                paramArray = id;
            } else {
                paramArray.push(id);
            }
            httpJson("xueshengZuoye/delete", "POST", paramArray, (res) => {
                if(res.code == 0){
                    getDataList();
                    alert('删除成功');
                }
            });
        } else {
            alert("已取消操作");
        }
    }

    // 用户登出
    <%@ include file="../../static/logout.jsp"%>

    //修改
    function edit(id) {
        window.sessionStorage.setItem('updateId', id)
        window.location.href = "add-or-update.jsp"
    }

    //清除会重复渲染的节点
    function clear() {
        var elements = document.getElementsByClassName('useOnce');
        for (var i = elements.length - 1; i >= 0; i--) {
            elements[i].parentNode.removeChild(elements[i]);
        }
    }

    //添加
    function add() {
        window.sessionStorage.setItem("addxueshengZuoye", "addxueshengZuoye");
        window.location.href = "add-or-update.jsp"
    }

    //报表
    function graph() {
        window.location.href = "graph.jsp"
    }

    // 查看详情
    function detail(id) {
        window.sessionStorage.setItem("updateId", id);
        window.location.href = "info.jsp";
    }

    //填充级联表搜索下拉框
                                                                                 
                                         
                     
                                                                                                                                                                 
                                         
                     
                                                                                                     
        function banjiTypesSelectSearch() {
            var banjiTypesSelectSearch = document.getElementById('banjiTypesSelectSearch');
            if(banjiTypesSelectSearch != null) {
                banjiTypesSelectSearch.add(new Option('-请选择-',''));
                if (banjiTypesOptions != null && banjiTypesOptions.length > 0){
                    for (var i = 0; i < banjiTypesOptions.length; i++) {
                            banjiTypesSelectSearch.add(new Option(banjiTypesOptions[i].indexName, banjiTypesOptions[i].codeIndex));
                    }
                }
            }
        }
                                                             
                                                                                 

    //填充本表搜索下拉框
                                            
    //查询级联表搜索条件所有列表
        function banjiTypesSelect() {
            //填充下拉框选项
            http("dictionary/page?page=1&limit=100&sort=&order=&dicCode=banji_types", "GET", {}, (res) => {
                if(res.code == 0){
                    banjiTypesOptions = res.data.list;
                }
            });
        }

    //查询当前表搜索条件所有列表


    $(document).ready(function () {
        //激活翻页按钮
        $('#tableId_previous').attr('class', 'paginate_button page-item previous')
        $('#tableId_next').attr('class', 'paginate_button page-item next')
        //隐藏原生搜索框
        $('#tableId_filter').hide()
        //设置右上角用户名
        $('.dropdown-menu h5').html(window.sessionStorage.getItem('username'))
        //设置项目名
        $('.sidebar-header h3 a').html(projectName)
        setMenu();
        init();

        //查询级联表的搜索下拉框
        banjiTypesSelect();

        //查询当前表的搜索下拉框
        getDataList();

        //级联表的下拉框赋值
                                                                                                 
                                                 
                         
                                                                                                                                                                                                 
                                                 
                         
                                                                                                                         
    banjiTypesSelectSearch();
                                                                         
                                                                                                 

        //当前表的下拉框赋值
                                                                                                                                    
    <%@ include file="../../static/myInfo.js"%>
    });
</script>
</body>

</html>