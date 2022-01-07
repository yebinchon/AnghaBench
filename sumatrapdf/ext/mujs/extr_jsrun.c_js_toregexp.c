
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* object; } ;
struct TYPE_9__ {scalar_t__ type; TYPE_3__ u; } ;
typedef TYPE_4__ js_Value ;
typedef int js_State ;
typedef int js_Regexp ;
struct TYPE_6__ {int r; } ;
struct TYPE_7__ {scalar_t__ type; TYPE_1__ u; } ;


 scalar_t__ JS_CREGEXP ;
 scalar_t__ JS_TOBJECT ;
 int js_typeerror (int *,char*) ;
 TYPE_4__* stackidx (int *,int) ;

js_Regexp *js_toregexp(js_State *J, int idx)
{
 js_Value *v = stackidx(J, idx);
 if (v->type == JS_TOBJECT && v->u.object->type == JS_CREGEXP)
  return &v->u.object->u.r;
 js_typeerror(J, "not a regexp");
}
