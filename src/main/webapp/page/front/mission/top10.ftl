<#include "/page/front/common/_layout.ftl"/>
<@html title="Top10 签到榜 - ${siteTitle!}" description="Top10 签到榜" sidebar_user_info="show" sidebar_create="show">
<div class="panel panel-default">
    <div class="panel-heading">
        <ol class="breadcrumb">
            <li><a href="${baseUrl!}/">首页</a></li>
            <li class="active">Top10 签到榜</li>
        </ol>
    </div>
    <div class="panel-body">
        <table class="table table-striped">
            <thead>
            <tr>
                <th>#</th>
                <th>用户名</th>
                <th>连续天数</th>
                <th>积分</th>
            </tr>
            </thead>
            <tbody>
            <#list missionList as user>
                <tr>
                    <td style="vertical-align: middle;padding:4px;">${user_index + 1}</td>
                    <td style="vertical-align: middle;padding:4px; max-width: 150px;text-overflow: ellipsis;white-space: nowrap;overflow: hidden;">
                        <img src="${user.avatar!}" width="30">
                        &nbsp;${user.nickname!}
                    </td>
                    <td style="vertical-align: middle;padding:4px;">${user.day!}</td>
                    <td style="vertical-align: middle;padding:4px;">${user.score!}</td>
                </tr>
            </#list>
            </tbody>
        </table>
    </div>
</div>
</@html>