
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int js_State ;
struct TYPE_3__ {struct TYPE_3__* prototype; } ;
typedef TYPE_1__ js_Object ;


 scalar_t__ js_isobject (int *,int) ;
 int js_pushboolean (int *,int) ;
 TYPE_1__* js_toobject (int *,int) ;

__attribute__((used)) static void Op_isPrototypeOf(js_State *J)
{
 js_Object *self = js_toobject(J, 0);
 if (js_isobject(J, 1)) {
  js_Object *V = js_toobject(J, 1);
  do {
   V = V->prototype;
   if (V == self) {
    js_pushboolean(J, 1);
    return;
   }
  } while (V);
 }
 js_pushboolean(J, 0);
}
