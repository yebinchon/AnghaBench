
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ int32_t ;
typedef scalar_t__ TraceNo ;
struct TYPE_7__ {int* mcode; } ;
struct TYPE_6__ {int* mctop; int flags; int J; TYPE_1__* T; } ;
struct TYPE_5__ {scalar_t__ spadjust; } ;
typedef int MCode ;
typedef TYPE_2__ ASMState ;


 int JIT_F_LEA_AGU ;
 scalar_t__ LJ_64 ;
 int MODRM (int ,int ,int ) ;
 int RID_ESP ;
 scalar_t__ XI_ARITHi ;
 scalar_t__ XI_ARITHi8 ;
 int XI_JMP ;
 scalar_t__ XI_LEA ;
 int XI_NOP ;
 int XM_OFS32 ;
 int XM_OFS8 ;
 int XM_REG ;
 int XM_SCALE1 ;
 int XOg_ADD ;
 scalar_t__ checki8 (scalar_t__) ;
 scalar_t__ jmprel (int*,int*) ;
 scalar_t__ lj_vm_exit_interp ;
 TYPE_3__* traceref (int ,scalar_t__) ;

__attribute__((used)) static void asm_tail_fixup(ASMState *as, TraceNo lnk)
{

  MCode *p = as->mctop;
  MCode *target, *q;
  int32_t spadj = as->T->spadjust;
  if (spadj == 0) {
    p -= ((as->flags & JIT_F_LEA_AGU) ? 7 : 6) + (LJ_64 ? 1 : 0);
  } else {
    MCode *p1;

    if (checki8(spadj)) {
      p -= 3;
      p1 = p-6;
      *p1 = (MCode)spadj;
    } else {
      p1 = p-9;
      *(int32_t *)p1 = spadj;
    }
    if ((as->flags & JIT_F_LEA_AGU)) {



      p1[-3] = (MCode)XI_LEA;
      p1[-2] = MODRM(checki8(spadj) ? XM_OFS8 : XM_OFS32, RID_ESP, RID_ESP);
      p1[-1] = MODRM(XM_SCALE1, RID_ESP, RID_ESP);
    } else {



      p1[-2] = (MCode)(checki8(spadj) ? XI_ARITHi8 : XI_ARITHi);
      p1[-1] = MODRM(XM_REG, XOg_ADD, RID_ESP);
    }
  }

  target = lnk ? traceref(as->J, lnk)->mcode : (MCode *)lj_vm_exit_interp;
  *(int32_t *)(p-4) = jmprel(p, target);
  p[-5] = XI_JMP;

  for (q = as->mctop-1; q >= p; q--)
    *q = XI_NOP;
  as->mctop = p;
}
