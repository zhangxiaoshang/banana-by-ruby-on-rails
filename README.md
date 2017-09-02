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

* api: '/menus/new'

* method: post

* params: 

```json
{
    "menu_id": 1,
    "customer": "阿童木"
}

```
example

http://localhost:3000/menus/new?q={"menu_id":1,"customer":"阿童木"}

response

```json
{
  "status": "200",
  "msg": "下单成功！",
  "body": {
    "order_id": "订单id",
    "customer": "客户姓名",
    "goods": "点单物品[{id: 1, name: 商品1, price: 1}，{id: 3, name: 商品3, price: 2}, ...]",
    "create_at": "创建时间",
    "update_at": "最后修改时间"
  }
}
```

### update

* api: '/menus/update'

* method: put

* params

```json
{
  "customer": "阿童木",
  "goods": [
    {
      "id": "menu_id", 
      "name": "商品1", 
      "price": 1
    },
    {
      "id": "menu_id", 
      "name": "商品3", 
      "price": 2
      }
    ]
}
```
example

http://localhost:3000/menus/update?q={"customer":"阿童木","goods":[{"id":"menu_id","name":"商品1","price":1},{"id":"menu_id","name":"商品3","price":2}]}

response

```json
{
  "status": "200",
  "msg": "下单成功！",
  "body": {
    "order_id": "订单id",
    "customer": "客户姓名",
    "goods": "点单物品[{id: 1, name: 商品1, price: 1}，{id: 3, name: 商品3, price: 2}, ...]",
    "create_at": "创建时间",
    "update_at": "最后修改时间"
  }
}
```

TODO above
