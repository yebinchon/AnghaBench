
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ idx; scalar_t__ ofs; int base; } ;
struct TYPE_9__ {TYPE_1__ mrm; } ;
typedef int Reg ;
typedef int IRIns ;
typedef TYPE_2__ ASMState ;


 int REX_GC64 ;
 int RID_MRM ;
 scalar_t__ RID_NONE ;
 int RSET_GPR ;
 int XO_LEA ;
 int XO_MOV ;
 int asm_fusearef (TYPE_2__*,int *,int ) ;
 int emit_mrm (TYPE_2__*,int ,int,int ) ;
 int emit_rr (TYPE_2__*,int ,int,int) ;
 int ra_dest (TYPE_2__*,int *,int ) ;

__attribute__((used)) static void asm_aref(ASMState *as, IRIns *ir)
{
  Reg dest = ra_dest(as, ir, RSET_GPR);
  asm_fusearef(as, ir, RSET_GPR);
  if (!(as->mrm.idx == RID_NONE && as->mrm.ofs == 0))
    emit_mrm(as, XO_LEA, dest|REX_GC64, RID_MRM);
  else if (as->mrm.base != dest)
    emit_rr(as, XO_MOV, dest|REX_GC64, as->mrm.base);
}
