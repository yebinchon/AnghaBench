
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int Object_prototype; } ;
typedef TYPE_1__ js_State ;


 int JSON_parse ;
 int JSON_stringify ;
 int JS_CJSON ;
 int JS_DONTENUM ;
 int jsB_propf (TYPE_1__*,char*,int ,int) ;
 int jsV_newobject (TYPE_1__*,int ,int ) ;
 int js_defglobal (TYPE_1__*,char*,int ) ;
 int js_pushobject (TYPE_1__*,int ) ;

void jsB_initjson(js_State *J)
{
 js_pushobject(J, jsV_newobject(J, JS_CJSON, J->Object_prototype));
 {
  jsB_propf(J, "JSON.parse", JSON_parse, 2);
  jsB_propf(J, "JSON.stringify", JSON_stringify, 3);
 }
 js_defglobal(J, "JSON", JS_DONTENUM);
}
