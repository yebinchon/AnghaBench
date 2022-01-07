
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_4__ {int t; } ;
typedef scalar_t__ Reg ;
typedef TYPE_1__ IRIns ;
typedef int ASMState ;


 scalar_t__ REX_64IR (TYPE_1__*,scalar_t__) ;
 scalar_t__ RID_MAX_GPR ;
 int XO_MOV ;
 int XO_MOVSD ;
 int XO_MOVSS ;
 int emit_rmro (int *,int ,scalar_t__,scalar_t__,int ) ;
 scalar_t__ irt_isnum (int ) ;

__attribute__((used)) static void emit_loadofs(ASMState *as, IRIns *ir, Reg r, Reg base, int32_t ofs)
{
  if (r < RID_MAX_GPR)
    emit_rmro(as, XO_MOV, REX_64IR(ir, r), base, ofs);
  else
    emit_rmro(as, irt_isnum(ir->t) ? XO_MOVSD : XO_MOVSS, r, base, ofs);
}
