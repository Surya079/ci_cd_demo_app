package com.fb.deploy_training;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController {

    @GetMapping("/")
    public String Hello(){
        return "Hello!,This App is working fine.This is CI/CD Pipelines";
    }

}
