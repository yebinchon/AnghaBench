
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int L; } ;
typedef TYPE_1__ jit_State ;
struct TYPE_11__ {int keyv; int tabv; int key; int tab; int valv; int val; } ;
typedef TYPE_2__ RecordIndex ;
typedef int MMS ;


 int copyTV (int ,int *,int *) ;
 int lj_record_mm_lookup (TYPE_1__*,TYPE_2__*,int ) ;
 int lj_snap_add (TYPE_1__*) ;
 int lua_assert (scalar_t__) ;
 int rec_mm_callcomp (TYPE_1__*,TYPE_2__*,int) ;
 scalar_t__ tref_iscdata (int ) ;

__attribute__((used)) static void rec_mm_comp_cdata(jit_State *J, RecordIndex *ix, int op, MMS mm)
{
  lj_snap_add(J);
  if (tref_iscdata(ix->val)) {
    ix->tab = ix->val;
    copyTV(J->L, &ix->tabv, &ix->valv);
  } else {
    lua_assert(tref_iscdata(ix->key));
    ix->tab = ix->key;
    copyTV(J->L, &ix->tabv, &ix->keyv);
  }
  lj_record_mm_lookup(J, ix, mm);
  rec_mm_callcomp(J, ix, op);
}
