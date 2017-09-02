# README

## something

* Ruby version

    * 2.3.1
    
* Rails version 

    * 5.1.3 

* System dependencies

    * mysql

* Database creation

    * menus

* How to run the test suite
    
    1. $ git clone git@github.com:zhangxiaoshang/banana-by-ruby-on-rails.git ./banana
    1. $ cd banana
    1. $ bundle install 
    1. $ rake db:create
    1. $ rake db:migrate
    1. $ rails server
    1. localhost:3000


## #1 增加<订单>的增删改查接口文档

### add

* api '/menus/new'

* params

```
menu-id: 1
customer: 阿童木
```
example

/menus/new?menu-id=1&customer=阿童木

response

```json
{
  "status": "200",
  "msg": "下单成功！",
  "body": {
    "id": "订单id",
    "customer": "客户姓名",
    "goods": "点单物品[商品1，商品2]",
    "category"
  }
}
```

