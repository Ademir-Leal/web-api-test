package com.webapi.webapitest.controllers;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.concurrent.atomic.AtomicLong;


@RestController
public class HomeController {

    @GetMapping("/home")
    public String greeting(@RequestParam(value = "name", defaultValue = "World") String name) {
        return "Test success ok!";
    }
}
