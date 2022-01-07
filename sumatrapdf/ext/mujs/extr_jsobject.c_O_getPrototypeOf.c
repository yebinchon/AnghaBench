
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int js_State ;
struct TYPE_3__ {int prototype; } ;
typedef TYPE_1__ js_Object ;


 int js_isobject (int *,int) ;
 int js_pushnull (int *) ;
 int js_pushobject (int *,int ) ;
 TYPE_1__* js_toobject (int *,int) ;
 int js_typeerror (int *,char*) ;

__attribute__((used)) static void O_getPrototypeOf(js_State *J)
{
 js_Object *obj;
 if (!js_isobject(J, 1))
  js_typeerror(J, "not an object");
 obj = js_toobject(J, 1);
 if (obj->prototype)
  js_pushobject(J, obj->prototype);
 else
  js_pushnull(J);
}
