
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int js_State ;
struct TYPE_3__ {int atts; struct TYPE_3__* right; scalar_t__ level; int name; struct TYPE_3__* left; } ;
typedef TYPE_1__ js_Property ;


 int JS_DONTENUM ;
 int js_pushliteral (int *,int ) ;
 int js_setindex (int *,int,int ) ;

__attribute__((used)) static int O_keys_walk(js_State *J, js_Property *ref, int i)
{
 if (ref->left->level)
  i = O_keys_walk(J, ref->left, i);
 if (!(ref->atts & JS_DONTENUM)) {
  js_pushliteral(J, ref->name);
  js_setindex(J, -2, i++);
 }
 if (ref->right->level)
  i = O_keys_walk(J, ref->right, i);
 return i;
}
