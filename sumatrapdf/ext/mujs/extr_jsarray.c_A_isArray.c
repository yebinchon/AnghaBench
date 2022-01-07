
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int js_State ;
struct TYPE_3__ {scalar_t__ type; } ;
typedef TYPE_1__ js_Object ;


 scalar_t__ JS_CARRAY ;
 scalar_t__ js_isobject (int *,int) ;
 int js_pushboolean (int *,int) ;
 TYPE_1__* js_toobject (int *,int) ;

__attribute__((used)) static void A_isArray(js_State *J)
{
 if (js_isobject(J, 1)) {
  js_Object *T = js_toobject(J, 1);
  js_pushboolean(J, T->type == JS_CARRAY);
 } else {
  js_pushboolean(J, 0);
 }
}
