package com.example.tfg_example.controllers;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class DemoController {

    @RequestMapping("/demo")
    public String greeting() {
        return "Demo controller to show up that the application is up and works";
    }
}
