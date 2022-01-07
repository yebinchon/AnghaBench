
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int x86Group3 ;
struct TYPE_5__ {int op1; } ;
typedef int Reg ;
typedef TYPE_1__ IRIns ;
typedef int ASMState ;


 int REX_64IR (TYPE_1__*,int ) ;
 int RSET_GPR ;
 int XO_GROUP3 ;
 int emit_rr (int *,int ,int ,int ) ;
 int ra_dest (int *,TYPE_1__*,int ) ;
 int ra_left (int *,int ,int ) ;

__attribute__((used)) static void asm_neg_not(ASMState *as, IRIns *ir, x86Group3 xg)
{
  Reg dest = ra_dest(as, ir, RSET_GPR);
  emit_rr(as, XO_GROUP3, REX_64IR(ir, xg), dest);
  ra_left(as, dest, ir->op1);
}
