
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int js_State ;
struct TYPE_3__ {struct TYPE_3__* right; scalar_t__ level; int atts; struct TYPE_3__* left; } ;
typedef TYPE_1__ js_Property ;


 int JS_DONTCONF ;

__attribute__((used)) static void O_seal_walk(js_State *J, js_Property *ref)
{
 if (ref->left->level)
  O_seal_walk(J, ref->left);
 ref->atts |= JS_DONTCONF;
 if (ref->right->level)
  O_seal_walk(J, ref->right);
}
