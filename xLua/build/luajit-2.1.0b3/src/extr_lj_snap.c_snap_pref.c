
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int jit_State ;
struct TYPE_6__ {TYPE_1__* ir; } ;
struct TYPE_5__ {int t; int prev; } ;
typedef scalar_t__ TRef ;
typedef int SnapEntry ;
typedef int MSize ;
typedef size_t IRRef ;
typedef TYPE_1__ IRIns ;
typedef TYPE_2__ GCtrace ;
typedef int BloomFilter ;


 int IRT (int ,int ) ;
 int IR_PVAL ;
 size_t REF_BIAS ;
 int bloomtest (int ,size_t) ;
 scalar_t__ emitir (int ,size_t,int ) ;
 scalar_t__ irref_isk (size_t) ;
 int irt_type (int ) ;
 int regsp_used (int ) ;
 scalar_t__ snap_dedup (int *,int *,int ,size_t) ;
 scalar_t__ snap_replay_const (int *,TYPE_1__*) ;

__attribute__((used)) static TRef snap_pref(jit_State *J, GCtrace *T, SnapEntry *map, MSize nmax,
        BloomFilter seen, IRRef ref)
{
  IRIns *ir = &T->ir[ref];
  TRef tr;
  if (irref_isk(ref))
    tr = snap_replay_const(J, ir);
  else if (!regsp_used(ir->prev))
    tr = 0;
  else if (!bloomtest(seen, ref) || (tr = snap_dedup(J, map, nmax, ref)) == 0)
    tr = emitir(IRT(IR_PVAL, irt_type(ir->t)), ref - REF_BIAS, 0);
  return tr;
}
