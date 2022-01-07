
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int t; } ;
typedef TYPE_1__ IRIns ;
typedef int ASMState ;


 int XO_XORPS ;
 int XOg_NEG ;
 int asm_fparith (int *,TYPE_1__*,int ) ;
 int asm_neg_not (int *,TYPE_1__*,int ) ;
 scalar_t__ irt_isnum (int ) ;

__attribute__((used)) static void asm_neg(ASMState *as, IRIns *ir)
{
  if (irt_isnum(ir->t))
    asm_fparith(as, ir, XO_XORPS);
  else
    asm_neg_not(as, ir, XOg_NEG);
}
