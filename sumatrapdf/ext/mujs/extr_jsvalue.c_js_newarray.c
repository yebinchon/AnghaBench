
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int Array_prototype; } ;
typedef TYPE_1__ js_State ;


 int JS_CARRAY ;
 int jsV_newobject (TYPE_1__*,int ,int ) ;
 int js_pushobject (TYPE_1__*,int ) ;

void js_newarray(js_State *J)
{
 js_pushobject(J, jsV_newobject(J, JS_CARRAY, J->Array_prototype));
}
