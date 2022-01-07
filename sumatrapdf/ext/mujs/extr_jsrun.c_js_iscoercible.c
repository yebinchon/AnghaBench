
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ type; } ;
typedef TYPE_1__ js_Value ;
typedef int js_State ;


 scalar_t__ JS_TNULL ;
 scalar_t__ JS_TUNDEFINED ;
 TYPE_1__* stackidx (int *,int) ;

int js_iscoercible(js_State *J, int idx) { js_Value *v = stackidx(J, idx); return v->type != JS_TUNDEFINED && v->type != JS_TNULL; }
