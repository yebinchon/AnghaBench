
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_17__ {int flags; TYPE_5__* L; } ;
typedef TYPE_1__ jit_State ;
typedef int int32_t ;
typedef int cTValue ;
struct TYPE_20__ {int * base; } ;
struct TYPE_19__ {int asize; } ;
struct TYPE_18__ {void* val; int valv; int key; int keyv; scalar_t__ idxchain; void* tab; int tabv; } ;
typedef TYPE_2__ RecordIndex ;
typedef TYPE_3__ GCtab ;
typedef int BCReg ;


 int JIT_F_OPT_SINK ;
 int copyTV (TYPE_5__*,int *,int *) ;
 void* getslot (TYPE_1__*,int) ;
 int lj_ir_kint (TYPE_1__*,int) ;
 int lj_record_idx (TYPE_1__*,TYPE_2__*) ;
 int lj_tab_reasize (TYPE_5__*,TYPE_3__*,int) ;
 int rec_idx_bump (TYPE_1__*,TYPE_2__*) ;
 int setintV (int *,int) ;
 int setnilV (int *) ;
 int settabV (TYPE_5__*,int *,TYPE_3__*) ;
 TYPE_3__* tabV (int *) ;

__attribute__((used)) static void rec_tsetm(jit_State *J, BCReg ra, BCReg rn, int32_t i)
{
  RecordIndex ix;
  cTValue *basev = J->L->base;
  GCtab *t = tabV(&basev[ra-1]);
  settabV(J->L, &ix.tabv, t);
  ix.tab = getslot(J, ra-1);
  ix.idxchain = 0;
  for (; ra < rn; i++, ra++) {
    setintV(&ix.keyv, i);
    ix.key = lj_ir_kint(J, i);
    copyTV(J->L, &ix.valv, &basev[ra]);
    ix.val = getslot(J, ra);
    lj_record_idx(J, &ix);
  }
}
