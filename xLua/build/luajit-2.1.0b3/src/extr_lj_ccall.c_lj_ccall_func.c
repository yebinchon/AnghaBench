
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_25__ {void (* func ) () ;scalar_t__ spadj; } ;
struct TYPE_21__ {unsigned int slot; } ;
struct TYPE_24__ {scalar_t__ tab; int miscmap; TYPE_1__ cb; } ;
struct TYPE_23__ {int info; int size; } ;
struct TYPE_22__ {int ctypeid; } ;
typedef int TValue ;
typedef TYPE_2__ GCcdata ;
typedef TYPE_3__ CType ;
typedef TYPE_4__ CTState ;
typedef int CTSize ;
typedef TYPE_5__ CCallState ;


 int CCONV ;
 scalar_t__ CTCC_CDECL ;
 int CTCC_STDCALL ;
 int CTF_INSERT (int ,int ,int ) ;
 int CTSIZE_PTR ;
 int G (int *) ;
 scalar_t__ ccall_get_results (int *,TYPE_4__*,TYPE_3__*,TYPE_5__*,int*) ;
 int ccall_set_args (int *,TYPE_4__*,TYPE_3__*,TYPE_5__*) ;
 scalar_t__ cdata_getptr (int ,int ) ;
 int cdataptr (TYPE_2__*) ;
 scalar_t__ ctype_cconv (int ) ;
 TYPE_4__* ctype_cts (int *) ;
 scalar_t__ ctype_isfunc (int ) ;
 scalar_t__ ctype_isptr (int ) ;
 TYPE_3__* ctype_raw (TYPE_4__*,int ) ;
 TYPE_3__* ctype_rawchild (TYPE_4__*,TYPE_3__*) ;
 int lj_gc_check (int *) ;
 int lj_tab_set (int *,int ,int *) ;
 int lj_trace_abort (int ) ;
 int lj_vm_ffi_call (TYPE_5__*) ;
 int setboolV (int ,int) ;
 int setlightudV (int *,void*) ;

int lj_ccall_func(lua_State *L, GCcdata *cd)
{
  CTState *cts = ctype_cts(L);
  CType *ct = ctype_raw(cts, cd->ctypeid);
  CTSize sz = CTSIZE_PTR;
  if (ctype_isptr(ct->info)) {
    sz = ct->size;
    ct = ctype_rawchild(cts, ct);
  }
  if (ctype_isfunc(ct->info)) {
    CCallState cc;
    int gcsteps, ret;
    cc.func = (void (*)(void))cdata_getptr(cdataptr(cd), sz);
    gcsteps = ccall_set_args(L, cts, ct, &cc);
    ct = (CType *)((intptr_t)ct-(intptr_t)cts->tab);
    cts->cb.slot = ~0u;
    lj_vm_ffi_call(&cc);
    if (cts->cb.slot != ~0u) {
      TValue tv;
      setlightudV(&tv, (void *)cc.func);
      setboolV(lj_tab_set(L, cts->miscmap, &tv), 1);
    }
    ct = (CType *)((intptr_t)ct+(intptr_t)cts->tab);
    gcsteps += ccall_get_results(L, cts, ct, &cc, &ret);







    while (gcsteps-- > 0)
      lj_gc_check(L);
    return ret;
  }
  return -1;
}
