
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


 scalar_t__ JS_CARRAY ;
 scalar_t__ JS_TOBJECT ;
 TYPE_3__* stackidx (int *,int) ;

int js_isarray(js_State *J, int idx)
{
 js_Value *v = stackidx(J, idx);
 return v->type == JS_TOBJECT && v->u.object->type == JS_CARRAY;
}
