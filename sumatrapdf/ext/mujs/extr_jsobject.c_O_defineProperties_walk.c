
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int js_State ;
struct TYPE_3__ {int atts; struct TYPE_3__* right; scalar_t__ level; int name; int value; struct TYPE_3__* left; } ;
typedef TYPE_1__ js_Property ;


 int JS_DONTENUM ;
 int ToPropertyDescriptor (int *,int ,int ,int ) ;
 int js_pop (int *,int) ;
 int js_pushvalue (int *,int ) ;
 int js_toobject (int *,int) ;

__attribute__((used)) static void O_defineProperties_walk(js_State *J, js_Property *ref)
{
 if (ref->left->level)
  O_defineProperties_walk(J, ref->left);
 if (!(ref->atts & JS_DONTENUM)) {
  js_pushvalue(J, ref->value);
  ToPropertyDescriptor(J, js_toobject(J, 1), ref->name, js_toobject(J, -1));
  js_pop(J, 1);
 }
 if (ref->right->level)
  O_defineProperties_walk(J, ref->right);
}
