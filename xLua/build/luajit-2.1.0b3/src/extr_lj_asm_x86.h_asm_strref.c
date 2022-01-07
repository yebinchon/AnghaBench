
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ base; scalar_t__ idx; int ofs; } ;
struct TYPE_10__ {TYPE_1__ mrm; } ;
typedef int Reg ;
typedef int IRIns ;
typedef TYPE_2__ ASMState ;


 int REX_GC64 ;
 int RID_MRM ;
 scalar_t__ RID_NONE ;
 int RSET_GPR ;
 int XG_ARITHi (int ) ;
 int XO_LEA ;
 int XOg_ADD ;
 int asm_fusestrref (TYPE_2__*,int *,int ) ;
 int emit_gri (TYPE_2__*,int ,int,int ) ;
 int emit_loadi (TYPE_2__*,int,int ) ;
 int emit_mrm (TYPE_2__*,int ,int,int ) ;
 int ra_dest (TYPE_2__*,int *,int ) ;

__attribute__((used)) static void asm_strref(ASMState *as, IRIns *ir)
{
  Reg dest = ra_dest(as, ir, RSET_GPR);
  asm_fusestrref(as, ir, RSET_GPR);
  if (as->mrm.base == RID_NONE)
    emit_loadi(as, dest, as->mrm.ofs);
  else if (as->mrm.base == dest && as->mrm.idx == RID_NONE)
    emit_gri(as, XG_ARITHi(XOg_ADD), dest|REX_GC64, as->mrm.ofs);
  else
    emit_mrm(as, XO_LEA, dest|REX_GC64, RID_MRM);
}
