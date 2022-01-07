
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int js_State ;
struct TYPE_5__ {int object; } ;
struct TYPE_6__ {scalar_t__ type; TYPE_1__ u; } ;
struct TYPE_7__ {int atts; struct TYPE_7__* right; scalar_t__ level; TYPE_2__ value; int name; struct TYPE_7__* left; } ;
typedef TYPE_3__ js_Property ;
typedef int js_Object ;


 int JS_DONTENUM ;
 scalar_t__ JS_TOBJECT ;
 int ToPropertyDescriptor (int *,int *,int ,int ) ;
 int js_typeerror (int *,char*) ;

__attribute__((used)) static void O_create_walk(js_State *J, js_Object *obj, js_Property *ref)
{
 if (ref->left->level)
  O_create_walk(J, obj, ref->left);
 if (!(ref->atts & JS_DONTENUM)) {
  if (ref->value.type != JS_TOBJECT)
   js_typeerror(J, "not an object");
  ToPropertyDescriptor(J, obj, ref->name, ref->value.u.object);
 }
 if (ref->right->level)
  O_create_walk(J, obj, ref->right);
}
