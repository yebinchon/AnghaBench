
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int L; int * base; } ;
typedef TYPE_1__ jit_State ;
struct TYPE_11__ {int nres; int * argv; } ;
struct TYPE_10__ {int mobjv; int mobj; int tabv; int tab; } ;
typedef int TValue ;
typedef TYPE_2__ RecordIndex ;
typedef TYPE_3__ RecordFFData ;
typedef int MMS ;


 int copyTV (int ,int *,int *) ;
 int lj_err_throw (int ,int) ;
 scalar_t__ lj_record_mm_lookup (TYPE_1__*,TYPE_2__*,int ) ;
 int lj_vm_cpcall (int ,int *,TYPE_1__*,int ) ;
 int recff_metacall_cp ;

__attribute__((used)) static int recff_metacall(jit_State *J, RecordFFData *rd, MMS mm)
{
  RecordIndex ix;
  ix.tab = J->base[0];
  copyTV(J->L, &ix.tabv, &rd->argv[0]);
  if (lj_record_mm_lookup(J, &ix, mm)) {
    int errcode;
    TValue argv0;

    J->base[1] = J->base[0];
    J->base[0] = ix.mobj;
    copyTV(J->L, &argv0, &rd->argv[0]);
    copyTV(J->L, &rd->argv[1], &rd->argv[0]);
    copyTV(J->L, &rd->argv[0], &ix.mobjv);

    errcode = lj_vm_cpcall(J->L, ((void*)0), J, recff_metacall_cp);

    copyTV(J->L, &rd->argv[0], &argv0);
    if (errcode)
      lj_err_throw(J->L, errcode);
    rd->nres = -1;
    return 1;
  }
  return 0;
}
