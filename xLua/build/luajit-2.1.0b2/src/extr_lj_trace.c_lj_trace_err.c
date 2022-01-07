
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_3__* L; int errinfo; } ;
typedef TYPE_1__ jit_State ;
typedef int int32_t ;
typedef scalar_t__ TraceError ;
struct TYPE_5__ {int top; } ;


 int LUA_ERRRUN ;
 int lj_err_throw (TYPE_3__*,int ) ;
 int setintV (int ,int ) ;
 int setnilV (int *) ;

void lj_trace_err(jit_State *J, TraceError e)
{
  setnilV(&J->errinfo);
  setintV(J->L->top++, (int32_t)e);
  lj_err_throw(J->L, LUA_ERRRUN);
}
