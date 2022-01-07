
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int js_State ;
struct TYPE_6__ {int length; } ;
struct TYPE_7__ {TYPE_1__ s; } ;
struct TYPE_8__ {scalar_t__ type; TYPE_2__ u; TYPE_5__* properties; } ;
typedef TYPE_3__ js_Object ;
struct TYPE_9__ {scalar_t__ level; } ;


 scalar_t__ JS_CSTRING ;
 int O_keys_walk (int *,TYPE_5__*,int ) ;
 int js_isobject (int *,int) ;
 int js_newarray (int *) ;
 int js_pushnumber (int *,int) ;
 int js_setindex (int *,int,int ) ;
 TYPE_3__* js_toobject (int *,int) ;
 int js_typeerror (int *,char*) ;

__attribute__((used)) static void O_keys(js_State *J)
{
 js_Object *obj;
 int i, k;

 if (!js_isobject(J, 1))
  js_typeerror(J, "not an object");
 obj = js_toobject(J, 1);

 js_newarray(J);

 if (obj->properties->level)
  i = O_keys_walk(J, obj->properties, 0);
 else
  i = 0;

 if (obj->type == JS_CSTRING) {
  for (k = 0; k < obj->u.s.length; ++k) {
   js_pushnumber(J, k);
   js_setindex(J, -2, i++);
  }
 }
}
