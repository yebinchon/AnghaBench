
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int ** exitstubgroup; } ;
struct TYPE_5__ {TYPE_2__* J; } ;
typedef int ExitNo ;
typedef TYPE_1__ ASMState ;


 int EXITSTUBS_PER_GROUP ;
 int LJ_MAX_EXITSTUBGR ;
 int LJ_TRERR_SNAPOV ;
 int * asm_exitstub_gen (TYPE_1__*,int) ;
 int lj_trace_err (TYPE_2__*,int ) ;

__attribute__((used)) static void asm_exitstub_setup(ASMState *as, ExitNo nexits)
{
  ExitNo i;
  if (nexits >= EXITSTUBS_PER_GROUP*LJ_MAX_EXITSTUBGR)
    lj_trace_err(as->J, LJ_TRERR_SNAPOV);
  for (i = 0; i < (nexits+EXITSTUBS_PER_GROUP-1)/EXITSTUBS_PER_GROUP; i++)
    if (as->J->exitstubgroup[i] == ((void*)0))
      as->J->exitstubgroup[i] = asm_exitstub_gen(as, i);
}
