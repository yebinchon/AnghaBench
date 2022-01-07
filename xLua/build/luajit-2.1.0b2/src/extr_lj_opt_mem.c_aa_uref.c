
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ o; scalar_t__ op1; int op2; } ;
typedef TYPE_1__ IRIns ;
typedef int AliasRet ;


 int ALIAS_MAY ;
 int ALIAS_MUST ;
 int ALIAS_NO ;

__attribute__((used)) static AliasRet aa_uref(IRIns *refa, IRIns *refb)
{
  if (refa->o != refb->o)
    return ALIAS_NO;
  if (refa->op1 == refb->op1) {
    if (refa->op2 == refb->op2)
      return ALIAS_MUST;
    else
      return ALIAS_NO;
  } else {
    if (((refa->op2 ^ refb->op2) & 0xff))
      return ALIAS_NO;
    else
      return ALIAS_MAY;
  }
}
