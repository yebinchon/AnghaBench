
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int t; } ;
typedef TYPE_1__ IRIns ;
typedef int ASMState ;


 int XO_MULSD ;
 int XOg_X_IMUL ;
 int asm_fparith (int *,TYPE_1__*,int ) ;
 int asm_intarith (int *,TYPE_1__*,int ) ;
 scalar_t__ irt_isnum (int ) ;

__attribute__((used)) static void asm_mul(ASMState *as, IRIns *ir)
{
  if (irt_isnum(ir->t))
    asm_fparith(as, ir, XO_MULSD);
  else
    asm_intarith(as, ir, XOg_X_IMUL);
}
