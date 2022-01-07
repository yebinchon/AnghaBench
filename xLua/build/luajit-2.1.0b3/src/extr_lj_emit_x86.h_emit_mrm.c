
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int x86Op ;
typedef int x86Mode ;
typedef scalar_t__ int32_t ;
struct TYPE_4__ {int base; scalar_t__ ofs; int idx; int scale; } ;
struct TYPE_5__ {scalar_t__* mcp; TYPE_1__ mrm; } ;
typedef int Reg ;
typedef scalar_t__ MCode ;
typedef TYPE_2__ ASMState ;


 scalar_t__ LJ_GC64 ;
 scalar_t__ MODRM (int ,int,int) ;
 int RID_EBP ;
 int RID_ESP ;
 int RID_MRM ;
 int RID_NONE ;
 int RID_RIP ;
 int XM_OFS0 ;
 int XM_OFS32 ;
 int XM_OFS8 ;
 int XM_REG ;
 int XM_SCALE1 ;
 scalar_t__ checki8 (scalar_t__) ;
 scalar_t__* emit_opm (int ,int ,int,int,scalar_t__*,int ) ;
 scalar_t__* emit_opmx (int ,int ,int ,int,int,int,scalar_t__*) ;
 int lua_assert (int) ;

__attribute__((used)) static void emit_mrm(ASMState *as, x86Op xo, Reg rr, Reg rb)
{
  MCode *p = as->mcp;
  x86Mode mode = XM_REG;
  if (rb == RID_MRM) {
    rb = as->mrm.base;
    if (rb == RID_NONE) {
      rb = RID_EBP;
      mode = XM_OFS0;
      p -= 4;
      *(int32_t *)p = as->mrm.ofs;
      if (as->mrm.idx != RID_NONE)
 goto mrmidx;




    } else if (LJ_GC64 && rb == RID_RIP) {
      lua_assert(as->mrm.idx == RID_NONE);
      mode = XM_OFS0;
      p -= 4;
      *(int32_t *)p = as->mrm.ofs;
    } else {
      if (as->mrm.ofs == 0 && (rb&7) != RID_EBP) {
 mode = XM_OFS0;
      } else if (checki8(as->mrm.ofs)) {
 *--p = (MCode)as->mrm.ofs;
 mode = XM_OFS8;
      } else {
 p -= 4;
 *(int32_t *)p = as->mrm.ofs;
 mode = XM_OFS32;
      }
      if (as->mrm.idx != RID_NONE) {
      mrmidx:
 as->mcp = emit_opmx(xo, mode, as->mrm.scale, rr, rb, as->mrm.idx, p);
 return;
      }
      if ((rb&7) == RID_ESP)
 *--p = MODRM(XM_SCALE1, RID_ESP, RID_ESP);
    }
  }
  as->mcp = emit_opm(xo, mode, rr, rb, p, 0);
}
