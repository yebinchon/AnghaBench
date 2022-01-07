
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int flags; scalar_t__ flagmcp; scalar_t__ mcp; } ;
struct TYPE_11__ {int t; } ;
typedef TYPE_1__ IRIns ;
typedef TYPE_2__ ASMState ;


 int JIT_F_LEA_AGU ;
 int XO_ADDSD ;
 int XOg_ADD ;
 int asm_fparith (TYPE_2__*,TYPE_1__*,int ) ;
 int asm_intarith (TYPE_2__*,TYPE_1__*,int ) ;
 int asm_lea (TYPE_2__*,TYPE_1__*) ;
 scalar_t__ irt_is64 (int ) ;
 scalar_t__ irt_isnum (int ) ;

__attribute__((used)) static void asm_add(ASMState *as, IRIns *ir)
{
  if (irt_isnum(ir->t))
    asm_fparith(as, ir, XO_ADDSD);
  else if ((as->flags & JIT_F_LEA_AGU) || as->flagmcp == as->mcp ||
    irt_is64(ir->t) || !asm_lea(as, ir))
    asm_intarith(as, ir, XOg_ADD);
}
