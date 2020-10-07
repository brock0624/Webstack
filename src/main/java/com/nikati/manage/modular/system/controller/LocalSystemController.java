package com.nikati.manage.modular.system.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @Author: Brock-Tiyi
 * @Date: 2020/3/22 21:57
 * @Description:
 * @Version: 1.0
 * Knowledge has no limit
 */
@Controller
@RequestMapping("/localsystem")
public class LocalSystemController {
    private static String PREFIX = "/system/localsystem/";


    /**
            * 跳转到本地系统页面
     */
    @RequestMapping("")
    public String index() {
        return PREFIX + "localsystem.html";
    }

    /**
     * 跳转到本地系统页面
     */
    @RequestMapping("/xiaomi")
    public String xiaomi() {
        return PREFIX + "xiaomi.html";
    }

    /**
     * 跳转到本地系统页面
     */
    @RequestMapping("/dianxin")
    public String dianxin() {
        return PREFIX + "dianxin.html";
    }
}
