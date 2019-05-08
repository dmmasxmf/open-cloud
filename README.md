<p align="center">
  <a target="_blank" href="https://nacos.io/en-us/"><img src="https://img.shields.io/badge/Nacos-0.2.1-blue.svg" alt="Nacos"></a>
  <a><img src="https://img.shields.io/badge/Spring%20Cloud-%20Greenwich.SR1-brightgreen.svg" alt="SpringCloud"></a>
  <a><img src="https://img.shields.io/badge/Spring%20Boot-2.1.4-brightgreen.svg" alt="SpringBoot"></a>
  <a><img src="https://img.shields.io/badge/Redis-orange.svg"></a>
  <a><img src="https://img.shields.io/badge/RabbitMq-orange.svg"></a>
  <a target="_blank" href="https://www.iviewui.com/docs/guide/install"><img src="https://img.shields.io/badge/iview-3.1.3-brightgreen.svg?style=flat-square" alt="iview"></a>
  <a><img src="https://img.shields.io/badge/vue-2.5.10-brightgreen.svg?style=flat-square" alt="vue"></a>
  <a><img src="https://img.shields.io/npm/l/express.svg" alt="License"></a>
</p>  

# 微服务开放平台 2.0.0

---
#### 简介
搭建基于OAuth2的开放平台、为APP端提供统一接口管控平台、为第三方合作伙伴的业务对接提供授信可控的技术对接平台.
+ 统一API网关、访问鉴权、参数验签、外部调用更安全.
+ 分布式架构,基于服务发现,Fegin(伪RPC)方式内部调用,更便捷.
+ 深度整合SpringCloud+SpringSecurity+Oauth2,更细粒度、灵活的ABAC权限控制.
+ 前后端分离方式开发应用，分工合作更高效!
+ 代码合理封装、简单易懂、   

<a target="_blank" href="http://39.106.187.125/admin">演示地址</a>
  
默认登录账号:admin 123456
测试登录账号:test 123456

#### 欢迎吐槽 
学习交流群:760809808  <a target="_blank" href="//shang.qq.com/wpa/qunwpa?idkey=b45f53bc72df5935af588df50a0f651285020356d1daa05f90ee3fb95a0607c9"><img  border="0" src="http://pub.idqqimg.com/wpa/images/group.png" alt="open-cloud学习交流群" title="open-cloud学习交流群"></a>  
![760809808](/docs/1548831206525.png)  

#### 代码仓库

##### 请随手给个Star! 感谢支持！

<a target="_blank" href="https://gitee.com/liuyadu">服务端源码-码云</a>  

<a target="_blank" href="https://github.com/liuyadu/">服务端源码-Github</a>  

<a target="_blank" href="https://gitee.com/liuyadu/open-admin-ui">前端ui源码</a>

<a target="_blank" href="https://gitee.com/liuyadu/open-cloud/wikis/pages">使用手册</a>  

<a target="_blank" href="https://gitee.com/liuyadu/open-cloud/wikis/jenkins%E6%8C%81%E7%BB%AD%E9%9B%86%E6%88%90?sort_id=1434524">jenkins持续集成</a>  

<a target="_blank" href="https://gitee.com/liuyadu/open-cloud/wikis/nginx%E9%83%A8%E7%BD%B2%E5%89%8D%E7%AB%AF%E9%A1%B9%E7%9B%AE?sort_id=1434529">nginx部署前端项目</a>  

#### 更新日志
    v-2.0.0 2019-05-01
        1. 升级SpringCloud版本至Greenwich.SR1,SpringBoot 2.1.4.RELEASE
        2. 重构项目结构
        3. 增加SpringCloudGateway
        4. 迁移gateway功能到base服务中
        5. 增加MybatisPlus
        6. 使用.yml代替.properties
        7. 移除generator模块,将提供单独代码生成项目(计划中...)
        
    v-1.0.0 2019-03-18
        1. 重构项目结构
        2. 重构表结构
        3. 重构授权逻辑
        4. 提取公共配置,并迁移到Nacos配置中心
        5. 优化功能
        
#### 代码结构
``` lua
open-cloud
├── docs
    ├── bin           -- 执行脚本  
    ├── config        -- 公共配置,用于导入到nacos配置中心   
    ├── generator     -- mapper生成器  
    ├── sql           -- sql文件
    
├── opencloud-app    -- 应用服务模块
    ├── app-admin  -- 运营后台服务(port = 8301)  
    ├── app-auth-demo  -- 移动应用用户认证中心(多认证中心演示)(port = 7211)  
     
├── opencloud-common  -- 公共类和jar包依赖
    ├── opencloud-common-core    -- 提供微服务相关依赖包、工具类、全局异常解析等...
    ├── opencloud-common-starter -- SpringBoot自动扫描
    
├── opencloud-gateway  -- 开放API服务模块
    ├── opencloud-api-gateway       -- API开放网关-基于SpringCloudGateway-(port = 8888)  
    ├── opencloud-api-gateway-zuul  -- API开放网关-基于Zuul-(port = 8888)  
    
├── opencloud-platform    --  平台服务模块
    ├── opencloud-base-client    -- 平台基础服务接口
    ├── opencloud-base-provider  -- 平台基础服务(port = 8233)  
    ├── opencloud-auth-client    -- 平台认证服务接口
    ├── opencloud-auth-provider  -- 平台认证服务(port = 8211)  
    ├── opencloud-msg-client    -- 消息服务接口
    ├── opencloud-msg-provider  -- 消息服务(port = 8266) 
    ├── opencloud-scheduler-client    -- 任务调度接口
    ├── opencloud-scheduler-provider  -- 任务调度服务(port = 8501)
    ├── opencloud-bpm-client   -- 工作流接口
    ├── opencloud-bpm-provider -- 工作流服务(port = 8255)
```

#### 系统结构图

![springcloud](/docs/springcloud.jpg)  

### 功能预览

<table>
	<tr>
      <td><img src="https://images.gitee.com/uploads/images/2019/0328/125654_a85872f7_791541.png"/></td>
      <td><img src="https://images.gitee.com/uploads/images/2019/0328/130140_14d04387_791541.png"/></td>
  </tr>
  <tr>
      <td><img src="https://images.gitee.com/uploads/images/2019/0328/130152_c96b3171_791541.png"/></td>
      <td><img src="https://images.gitee.com/uploads/images/2019/0328/130201_0db637b1_791541.png"/></td>
  </tr>
</table>

#### 数据模型

##### 基础权限模型  

![base](/docs/base.png)  

##### 网关访问限制模型  

![gateway](/docs/gateway.png)  

#### 快速开始
上手难度：★★★

本项目基于springCloud打造的分布式快速开发框架. 需要了解SpringCloud,SpringBoot开发,分布式原理。

#### 注：Nacos版本选择V0.9.0以下版本. 1.0.0以上版本暂未测试!

1. 准备环境
    + Java1.8
    + 阿里巴巴Nacos服务发现和注册中心 <a href="https://nacos.io/zh-cn/">nacos.io</a>
    + Redis
    + RabbitMq （需安装rabbitmq_delayed_message_exchange插件 <a href="https://www.rabbitmq.com/community-plugins.html" target="_blank">下载地址</a>）
    + Mysql
    + Maven
    + Nodejs
   
2. 导入sql脚本
    + docs/sql/oauth2.sql
    + docs/sql/base.sql
    + docs/sql/gateway.sql
    + docs/sql/quartz.sql && scheduler.sql
    
3. 导入配置中心,Nacos公共配置 
    + 访问 http://localhost:8848/nacos/index.html 
    + 新建配置 
        + 项目目录/docs/config/db.properties >  db.properties
        + 项目目录/docs/config/rabbitmq.properties > rabbitmq.properties
        + 项目目录/docs/config/redis.properties > redis.properties
        + 项目目录/docs/config/common.properties  > common.properties  
     如图:
     ![输入图片说明](https://gitee.com/uploads/images/2019/0425/231436_fce24434_791541.png "nacos.png")
4. 修改主pom.xml  

    初始化
    ``` bush
        maven clean install
    ```
    本地启动,默认不用修改
    ``` xml
        <!--Nacos配置中心地址-->
        <config.server-addr>127.0.0.1:8848</config.server-addr>
        <!--Nacos配置中心命名空间,用于支持多环境.这里必须使用ID，不能使用名称,默认为空-->
        <config.namespace></config.namespace>
        <!--Nacos服务发现地址-->
        <discovery.server-addr>127.0.0.1:8848</discovery.server-addr>
    ```
    
5. 本地启动
     + AuthApplication (必须)
     + BaseApplication (必须)
     + ApiGatewayApplication (必须)
     + AdminApplication   (必须)
   4个服务启动成功后。就可以依赖这些服务进行微服务开发了。  
   访问 http://localhost:8888
     
6. 前端启动
    ```bush
        npm install 
        npm run dev
    ``` 
    访问 http://localhost:8080
    
7. 项目打包部署  

     maven多环境打包
   ```bush
     mvn clean install package -P {dev|test|online}
   ```
    项目启动
    ```bush
    1. ./docs/bin/startup.sh {start|stop|restart|status} open-base-provider.jar
    2. ./docs/bin/startup.sh {start|stop|restart|status} open-auth-provider.jar
    3. ./docs/bin/startup.sh {start|stop|restart|status} open-admin-provider.jar
    4. ./docs/bin/startup.sh {start|stop|restart|status} open-api-gateway.jar
    ```
    
#### 集成开发  
###
 资源服务器Oauth2校验解析token共总结了3种存放和读取方式:  
 
 + 远程校验解析token. 缺点:需创建客户端信息,http方式,性能较差. 构建方法:OpenHelper.buildRemoteTokenServices(OpenCommonProperties properties)
 + jwt校验解析token. 缺点:需提供jwt签名或密钥,生存token过长(cookie有时存放不下),且base64加密无法存放敏感数据,不方便拓展. 构建方法:OpenHelper.buildJwtTokenServices(OpenCommonProperties properties)
 + (建议使用)redis校验解析token. 无需创建任何客户端和密钥,读取性能优,可存放复杂的认证信息. 缺点:必须使用同一个redis DB. 构建方法: OpenHelper.buildRedisTokenServices(RedisConnectionFactory redisConnectionFactory)

1.创建新maven项目
   ```xml
         <!-- 引入公共包 -->
         <dependency>
                    <artifactId>opencloud-common-starter</artifactId>
                    <groupId>com.opencloud</groupId>
                    <version>${opencloud.common.version}</version>
         </dependency>
   ```
    
2.配置 bootstrap.yml
   ```yaml 
      server:
          port: 8266
      spring:
          application:
              name: ${artifactId}
          cloud:
              nacos:
                  config:
                      namespace: ${config.namespace}
                      refreshable-dataids: common.properties
                      server-addr: ${config.server-addr}
                      shared-dataids: common.properties,db.properties,redis.properties,rabbitmq.properties
                  discovery:
                      server-addr: ${discovery.server-addr}
          main:
              allow-bean-definition-overriding: true
          profiles:
              active: ${profile.name}
      
      management:
          endpoints:
              web:
                  exposure:
                      include: refresh,health
      opencloud:
          swagger2:
              description: 平台消息服务
              enabled: true
              title: 平台消息服务
   ```
   
3. 创建MyServiceApplication.java
   ```java
        //开启feign RPC远程调用
       @EnableFeignClients
       // 开启服务发现
       @EnableDiscoveryClient
       @SpringBootApplication
       public class MyServiceApplication {
       
           public static void main(String[] args) {
               SpringApplication.run(MyServiceApplication.class, args);
           }
       }
   ```
4.创建ResourceServerConfiguration.java 资源服务配置

   ```java
        @Configuration
        @EnableResourceServer
        public class ResourceServerConfiguration extends ResourceServerConfigurerAdapter {
            @Autowired
            private RedisConnectionFactory redisConnectionFactory;
        
            @Override
            public void configure(ResourceServerSecurityConfigurer resources) throws Exception {
                  // 构建redis获取token,这里是为了支持自定义用户信息转换器
                  resources.tokenServices(OpenHelper.buildRedisTokenServices(redisConnectionFactory));
            }
        
            @Override
            public void configure(HttpSecurity http) throws Exception {
                http.sessionManagement().sessionCreationPolicy(SessionCreationPolicy.IF_REQUIRED)
                        .and()
                        .authorizeRequests()
                        // 内部访问直接放行
                        .antMatchers("/v1/**").permitAll()
                        // 只有拥有actuator权限可执行远程端点
                        .requestMatchers(EndpointRequest.toAnyEndpoint()).hasAnyAuthority(CommonConstants.AUTHORITY_ACTUATOR)
                        .anyRequest().authenticated()
                        .and()
                         //认证鉴权错误处理,为了统一异常处理。每个资源服务器都应该加上。
                        .exceptionHandling()
                        .accessDeniedHandler(new OpenAccessDeniedHandler())
                        .authenticationEntryPoint(new OpenAuthenticationEntryPoint())
                        .and()
                        .csrf().disable();
            }
        
        }
   ```
   
5.启动项目  

#### 多认证中心
1. 平台用户认证中心(opencloud-auth-provider) 
2. 应用用户认证中心(app-auth-demo) 
3. 用户认证中心2 - 用户认证中心2
4. 用户认证中心N - 根据实际应用可创建多个用户中心

针对不同应用的用户数据是单独存储，所以需要建立不同的认证中心提供用户认证。
+ 采用oauth2统一协议,每个APP拥有独立的认证授权中心.
+ 区分用户数据源
+ 共享客户端oauth_client_details信息.
+ 统一方法获取OpenHelper.getUser().认证中心标识-authCenterId.
+ 个性定制,可单独提供手机验证码等方式登陆.

#### 第三方接口调用 
### 1.创建应用信息

![创建应用信息](https://images.gitee.com/uploads/images/2019/0326/151715_1eee9886_791541.png "创建应用信息")
### 2.配置开发信息

![配置开发信息](https://images.gitee.com/uploads/images/2019/0326/151725_e0743ddb_791541.png "配置开发信息")
### 3.授权功能,默认必须勾选获取当前登录信息接口

![授权功能](https://images.gitee.com/uploads/images/2019/0326/151739_09519ffd_791541.png "授权功能")


### 4.使用postman测试调用
例：
应用信息生成的
AppId： 1553588629729
AppSecret： 1a616ba3f91141efa1c4f4a1ce725e2c

1. 多认证中心,密码模式  
  移动应用用户认证中心：localhost:7211/oauth/token  
+ 首先配置客户端密码
![输入图片说明](https://images.gitee.com/uploads/images/2019/0403/181809_ef6893fb_791541.png "QQ截图20190403181710.png")
+ 输入用户username和password
![输入图片说明](https://images.gitee.com/uploads/images/2019/0403/181820_f59fb7b9_791541.png "QQ截图20190403181721.png")
+ 获取用户信息
![输入图片说明](https://images.gitee.com/uploads/images/2019/0403/181844_702a05b7_791541.png "QQ截图20190403181733.png")


2. 授权码模式(authorization_code) 需要用户认证
- 获取code
浏览器访问
```
 http://localhost:8211/oauth/authorize?response_type=code&client_id=1553588629729&redirect_uri=http://www.baidu.com
```
未登录将进入登录页，输入系统用户登录信息
![输入图片说明](https://images.gitee.com/uploads/images/2019/0326/155530_44c6779e_791541.png "login.png")
用户确认授权信息
![输入图片说明](https://images.gitee.com/uploads/images/2019/0326/160746_443dc237_791541.png "confrim.png")
重定向到回调地址,获得code
![输入图片说明](https://images.gitee.com/uploads/images/2019/0326/160915_4f078abf_791541.png "code.png")

- 使用postman通过code获取access_token，
![输入图片说明](https://images.gitee.com/uploads/images/2019/0326/170307_a233d434_791541.png "token.png")

- 使用access_token获取已授权资源
![输入图片说明](https://images.gitee.com/uploads/images/2019/0326/170316_82f0029c_791541.png "res.png")

3. 客户端模式(client_credentials)
```
 http://localhost:8211/oauth/token?grant_type=client_credentials&client_id=1553588629729&client_secret=1a616ba3f91141efa1c4f4a1ce725e2c
```
- 获取客户端token
![输入图片说明](https://images.gitee.com/uploads/images/2019/0326/182121_6cb1d676_791541.png "ctoken.png")
- 访问未授权资源提示权限不足!
![输入图片说明](https://images.gitee.com/uploads/images/2019/0326/182231_9185e368_791541.png "ctoken1.png")
- 访问已授权资源,正常返回数据(如果授权完,还提示权限不足，由于上次令牌存在缓存信息,重新获取token即可)
![输入图片说明](https://images.gitee.com/uploads/images/2019/0326/182343_dc4305d0_791541.png "ctoken2.png")


