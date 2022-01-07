
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int jit_State ;
struct TYPE_4__ {scalar_t__ op2; scalar_t__ op1; } ;
typedef TYPE_1__ IRIns ;
typedef int AliasRet ;


 int ALIAS_MAY ;
 int ALIAS_MUST ;
 int ALIAS_NO ;
 scalar_t__ IRFL_TAB_META ;
 scalar_t__ IRFL_TAB_NOMM ;
 int aa_table (int *,scalar_t__,scalar_t__) ;

__attribute__((used)) static AliasRet aa_fref(jit_State *J, IRIns *refa, IRIns *refb)
{
  if (refa->op2 != refb->op2)
    return ALIAS_NO;
  if (refa->op1 == refb->op1)
    return ALIAS_MUST;
  else if (refa->op2 >= IRFL_TAB_META && refa->op2 <= IRFL_TAB_NOMM)
    return aa_table(J, refa->op1, refb->op1);
  else
    return ALIAS_MAY;
}
