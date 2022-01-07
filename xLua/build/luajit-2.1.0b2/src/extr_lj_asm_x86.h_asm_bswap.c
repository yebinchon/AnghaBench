
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int mcp; } ;
struct TYPE_9__ {int op1; } ;
typedef int Reg ;
typedef TYPE_1__ IRIns ;
typedef TYPE_2__ ASMState ;


 int REX_64IR (TYPE_1__*,int ) ;
 int RSET_GPR ;
 scalar_t__ XO_BSWAP ;
 int emit_op (scalar_t__,int ,int,int ,int ,int) ;
 int ra_dest (TYPE_2__*,TYPE_1__*,int ) ;
 int ra_left (TYPE_2__*,int,int ) ;

__attribute__((used)) static void asm_bswap(ASMState *as, IRIns *ir)
{
  Reg dest = ra_dest(as, ir, RSET_GPR);
  as->mcp = emit_op(XO_BSWAP + ((dest&7) << 24),
      REX_64IR(ir, 0), dest, 0, as->mcp, 1);
  ra_left(as, dest, ir->op1);
}
