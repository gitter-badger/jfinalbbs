package com.jfinalbbs.user;

import com.jfinalbbs.common.BaseController;
import com.jfinalbbs.interceptor.AdminUserInterceptor;
import com.jfinal.aop.Before;
import com.jfinal.kit.PropKit;

/**
 * Created by Tomoya.
 * Copyright (c) 2016, All Rights Reserved.
 * http://jfinalbbs.com
 */
public class UserAdminController extends BaseController {

    public void index() {
        String nickname = getPara("nickname");
        String email = getPara("email");
        setAttr("page", User.me.page(getParaToInt("p", 1), defaultPageSize(), nickname, email));
        setAttr("nickname", nickname);
        setAttr("email", email);
        render("index.html");
    }

}
