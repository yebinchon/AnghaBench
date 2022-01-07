
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int t; } ;
typedef TYPE_1__ IRIns ;
typedef int ASMState ;


 int CC_G ;
 int XO_MINSD ;
 int asm_fparith (int *,TYPE_1__*,int ) ;
 int asm_intmin_max (int *,TYPE_1__*,int ) ;
 scalar_t__ irt_isnum (int ) ;

__attribute__((used)) static void asm_min(ASMState *as, IRIns *ir)
{
  if (irt_isnum(ir->t))
    asm_fparith(as, ir, XO_MINSD);
  else
    asm_intmin_max(as, ir, CC_G);
}
