
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* object; } ;
struct TYPE_7__ {scalar_t__ type; TYPE_2__ u; } ;
typedef TYPE_3__ js_Value ;
typedef int js_State ;
struct TYPE_5__ {scalar_t__ type; } ;


 scalar_t__ JS_CCFUNCTION ;
 scalar_t__ JS_CFUNCTION ;
 scalar_t__ JS_CSCRIPT ;
 scalar_t__ JS_TOBJECT ;
 TYPE_3__* stackidx (int *,int) ;

int js_iscallable(js_State *J, int idx)
{
 js_Value *v = stackidx(J, idx);
 if (v->type == JS_TOBJECT)
  return v->u.object->type == JS_CFUNCTION ||
   v->u.object->type == JS_CSCRIPT ||
   v->u.object->type == JS_CCFUNCTION;
 return 0;
}
