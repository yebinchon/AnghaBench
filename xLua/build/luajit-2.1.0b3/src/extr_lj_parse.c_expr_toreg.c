
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_17__ {int info; } ;
struct TYPE_18__ {TYPE_1__ s; } ;
struct TYPE_20__ {scalar_t__ k; TYPE_2__ u; void* t; void* f; } ;
struct TYPE_19__ {void* lasttarget; void* pc; int freereg; } ;
typedef TYPE_3__ FuncState ;
typedef TYPE_4__ ExpDesc ;
typedef int BCReg ;
typedef void* BCPos ;


 int BC_JMP ;
 int BC_KPRI ;
 void* NO_JMP ;
 scalar_t__ VJMP ;
 int VKFALSE ;
 int VKTRUE ;
 scalar_t__ VNONRELOC ;
 void* bcemit_AD (TYPE_3__*,int ,int ,int ) ;
 int bcemit_AJ (TYPE_3__*,int ,int ,int) ;
 void* bcemit_jmp (TYPE_3__*) ;
 scalar_t__ expr_hasjump (TYPE_4__*) ;
 int expr_toreg_nobranch (TYPE_3__*,TYPE_4__*,int ) ;
 int jmp_append (TYPE_3__*,void**,int ) ;
 scalar_t__ jmp_novalue (TYPE_3__*,void*) ;
 int jmp_patchval (TYPE_3__*,void*,void*,int ,void*) ;
 int jmp_tohere (TYPE_3__*,void*) ;

__attribute__((used)) static void expr_toreg(FuncState *fs, ExpDesc *e, BCReg reg)
{
  expr_toreg_nobranch(fs, e, reg);
  if (e->k == VJMP)
    jmp_append(fs, &e->t, e->u.s.info);
  if (expr_hasjump(e)) {
    BCPos jend, jfalse = NO_JMP, jtrue = NO_JMP;
    if (jmp_novalue(fs, e->t) || jmp_novalue(fs, e->f)) {
      BCPos jval = (e->k == VJMP) ? NO_JMP : bcemit_jmp(fs);
      jfalse = bcemit_AD(fs, BC_KPRI, reg, VKFALSE);
      bcemit_AJ(fs, BC_JMP, fs->freereg, 1);
      jtrue = bcemit_AD(fs, BC_KPRI, reg, VKTRUE);
      jmp_tohere(fs, jval);
    }
    jend = fs->pc;
    fs->lasttarget = jend;
    jmp_patchval(fs, e->f, jend, reg, jfalse);
    jmp_patchval(fs, e->t, jend, reg, jtrue);
  }
  e->f = e->t = NO_JMP;
  e->u.s.info = reg;
  e->k = VNONRELOC;
}
