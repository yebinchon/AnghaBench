
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_7__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {TYPE_7__* L; int * base; } ;
typedef TYPE_1__ jit_State ;
struct TYPE_10__ {int * base; } ;
struct TYPE_9__ {int keyv; int valv; int mobjv; int key; int val; int mobj; } ;
typedef int TValue ;
typedef int TRef ;
typedef TYPE_2__ RecordIndex ;
typedef int BCReg ;


 int LJ_FR2 ;
 int copyTV (TYPE_7__*,int *,int *) ;
 int lj_cont_condf ;
 int lj_cont_condt ;
 int lj_record_call (TYPE_1__*,int,int) ;
 int rec_mm_prep (TYPE_1__*,int ) ;

__attribute__((used)) static void rec_mm_callcomp(jit_State *J, RecordIndex *ix, int op)
{
  BCReg func = rec_mm_prep(J, (op&1) ? lj_cont_condf : lj_cont_condt);
  TRef *base = J->base + func + LJ_FR2;
  TValue *tv = J->L->base + func + LJ_FR2;
  base[-LJ_FR2] = ix->mobj; base[1] = ix->val; base[2] = ix->key;
  copyTV(J->L, tv-LJ_FR2, &ix->mobjv);
  copyTV(J->L, tv+1, &ix->valv);
  copyTV(J->L, tv+2, &ix->keyv);
  lj_record_call(J, func, 2);
}
