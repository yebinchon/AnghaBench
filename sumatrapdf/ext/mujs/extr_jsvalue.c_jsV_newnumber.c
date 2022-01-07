
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int Number_prototype; } ;
typedef TYPE_2__ js_State ;
struct TYPE_8__ {double number; } ;
struct TYPE_10__ {TYPE_1__ u; } ;
typedef TYPE_3__ js_Object ;


 int JS_CNUMBER ;
 TYPE_3__* jsV_newobject (TYPE_2__*,int ,int ) ;

__attribute__((used)) static js_Object *jsV_newnumber(js_State *J, double v)
{
 js_Object *obj = jsV_newobject(J, JS_CNUMBER, J->Number_prototype);
 obj->u.number = v;
 return obj;
}
