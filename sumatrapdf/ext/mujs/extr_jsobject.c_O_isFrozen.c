
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int js_State ;
struct TYPE_4__ {int extensible; TYPE_3__* properties; } ;
typedef TYPE_1__ js_Object ;
struct TYPE_5__ {scalar_t__ level; } ;


 int O_isFrozen_walk (int *,TYPE_3__*) ;
 int js_isobject (int *,int) ;
 int js_pushboolean (int *,int) ;
 TYPE_1__* js_toobject (int *,int) ;
 int js_typeerror (int *,char*) ;

__attribute__((used)) static void O_isFrozen(js_State *J)
{
 js_Object *obj;

 if (!js_isobject(J, 1))
  js_typeerror(J, "not an object");

 obj = js_toobject(J, 1);

 if (obj->properties->level) {
  if (!O_isFrozen_walk(J, obj->properties)) {
   js_pushboolean(J, 0);
   return;
  }
 }

 js_pushboolean(J, !obj->extensible);
}
