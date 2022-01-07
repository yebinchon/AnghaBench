
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_9__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef size_t ptrdiff_t ;
struct TYPE_10__ {int* base; size_t maxslot; TYPE_9__* L; } ;
typedef TYPE_1__ jit_State ;
struct TYPE_12__ {int * base; } ;
struct TYPE_11__ {int tab; int mobj; int mobjv; int tabv; } ;
typedef int TValue ;
typedef int TRef ;
typedef TYPE_2__ RecordIndex ;
typedef size_t BCReg ;


 int LJ_FR2 ;
 int LJ_TRERR_NOMM ;
 int MM_call ;
 int TREF_FRAME ;
 int copyTV (TYPE_9__*,int *,int *) ;
 int funcV (int *) ;
 int getslot (TYPE_1__*,size_t) ;
 int lj_record_mm_lookup (TYPE_1__*,TYPE_2__*,int ) ;
 int lj_trace_err (TYPE_1__*,int ) ;
 int lua_assert (int) ;
 int rec_call_specialize (TYPE_1__*,int ,int) ;
 int tref_isfunc (int) ;

__attribute__((used)) static void rec_call_setup(jit_State *J, BCReg func, ptrdiff_t nargs)
{
  RecordIndex ix;
  TValue *functv = &J->L->base[func];
  TRef *fbase = &J->base[func];
  ptrdiff_t i;
  lua_assert(!LJ_FR2);
  for (i = 0; i <= nargs; i++)
    (void)getslot(J, func+i);
  if (!tref_isfunc(fbase[0])) {
    ix.tab = fbase[0];
    copyTV(J->L, &ix.tabv, functv);
    if (!lj_record_mm_lookup(J, &ix, MM_call) || !tref_isfunc(ix.mobj))
      lj_trace_err(J, LJ_TRERR_NOMM);
    for (i = ++nargs; i > 0; i--)
      fbase[i] = fbase[i-1];
    fbase[0] = ix.mobj;
    functv = &ix.mobjv;
  }
  fbase[0] = TREF_FRAME | rec_call_specialize(J, funcV(functv), fbase[0]);
  J->maxslot = (BCReg)nargs;
}
