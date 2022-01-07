
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int js_State ;
struct TYPE_3__ {int atts; struct TYPE_3__* right; scalar_t__ level; struct TYPE_3__* left; } ;
typedef TYPE_1__ js_Property ;


 int JS_DONTCONF ;

__attribute__((used)) static int O_isSealed_walk(js_State *J, js_Property *ref)
{
 if (ref->left->level)
  if (!O_isSealed_walk(J, ref->left))
   return 0;
 if (!(ref->atts & JS_DONTCONF))
  return 0;
 if (ref->right->level)
  if (!O_isSealed_walk(J, ref->right))
   return 0;
 return 1;
}
