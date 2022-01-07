
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int top; } ;
typedef TYPE_1__ lua_State ;
typedef int lua_Number ;
typedef size_t int32_t ;
struct TYPE_6__ {int * fpr; scalar_t__* gpr; } ;
typedef TYPE_2__ ExitState ;


 scalar_t__ LJ_UNLIKELY (int ) ;
 size_t RID_NUM_FPR ;
 size_t RID_NUM_GPR ;
 int setintV (int ,size_t) ;
 int setnanV (int ) ;
 int setnumV (int ,int ) ;
 int tvisnan (int ) ;

__attribute__((used)) static void trace_exit_regs(lua_State *L, ExitState *ex)
{
  int32_t i;
  setintV(L->top++, RID_NUM_GPR);
  setintV(L->top++, RID_NUM_FPR);
  for (i = 0; i < RID_NUM_GPR; i++) {
    if (sizeof(ex->gpr[i]) == sizeof(int32_t))
      setintV(L->top++, (int32_t)ex->gpr[i]);
    else
      setnumV(L->top++, (lua_Number)ex->gpr[i]);
  }

  for (i = 0; i < RID_NUM_FPR; i++) {
    setnumV(L->top, ex->fpr[i]);
    if (LJ_UNLIKELY(tvisnan(L->top)))
      setnanV(L->top);
    L->top++;
  }

}
