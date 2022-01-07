
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_7__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int js_State ;
struct TYPE_8__ {TYPE_7__* properties; } ;
typedef TYPE_1__ js_Object ;
struct TYPE_9__ {scalar_t__ level; } ;


 int JS_COBJECT ;
 int O_create_walk (int *,TYPE_1__*,TYPE_7__*) ;
 TYPE_1__* jsV_newobject (int *,int ,TYPE_1__*) ;
 scalar_t__ js_isdefined (int *,int) ;
 scalar_t__ js_isnull (int *,int) ;
 scalar_t__ js_isobject (int *,int) ;
 int js_pushobject (int *,TYPE_1__*) ;
 TYPE_1__* js_toobject (int *,int) ;
 int js_typeerror (int *,char*) ;

__attribute__((used)) static void O_create(js_State *J)
{
 js_Object *obj;
 js_Object *proto;
 js_Object *props;

 if (js_isobject(J, 1))
  proto = js_toobject(J, 1);
 else if (js_isnull(J, 1))
  proto = ((void*)0);
 else
  js_typeerror(J, "not an object or null");

 obj = jsV_newobject(J, JS_COBJECT, proto);
 js_pushobject(J, obj);

 if (js_isdefined(J, 2)) {
  if (!js_isobject(J, 2))
   js_typeerror(J, "not an object");
  props = js_toobject(J, 2);
  if (props->properties->level)
   O_create_walk(J, obj, props->properties);
 }
}
