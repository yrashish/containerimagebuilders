package com.compare.imagebuilder;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/hello")
public class HelloController {
    @GetMapping
     public String hello() throws InterruptedException{

        Thread.sleep(5000);
        return "Hello world";
     }
}
