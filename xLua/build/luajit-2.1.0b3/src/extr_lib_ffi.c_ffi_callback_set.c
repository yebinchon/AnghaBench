
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int lua_State ;
typedef int int32_t ;
struct TYPE_11__ {size_t sizeid; scalar_t__* cbid; size_t topid; } ;
struct TYPE_14__ {TYPE_1__ cb; int * miscmap; } ;
struct TYPE_13__ {int size; int info; } ;
struct TYPE_12__ {int ctypeid; } ;
typedef int TValue ;
typedef size_t MSize ;
typedef int GCtab ;
typedef int GCfunc ;
typedef TYPE_2__ GCcdata ;
typedef TYPE_3__ CType ;
typedef TYPE_4__ CTState ;


 scalar_t__ LJ_32 ;
 int LJ_ERR_FFI_BADCBACK ;
 scalar_t__ cdataptr (TYPE_2__*) ;
 TYPE_4__* ctype_cts (int *) ;
 scalar_t__ ctype_isptr (int ) ;
 TYPE_3__* ctype_raw (TYPE_4__*,int ) ;
 TYPE_2__* ffi_checkcdata (int *,int) ;
 size_t lj_ccallback_ptr2slot (TYPE_4__*,void*) ;
 int lj_err_caller (int *,int ) ;
 int lj_gc_anybarriert (int *,int *) ;
 int * lj_tab_setint (int *,int *,int ) ;
 int setfuncV (int *,int *,int *) ;
 int setnilV (int *) ;

__attribute__((used)) static int ffi_callback_set(lua_State *L, GCfunc *fn)
{
  GCcdata *cd = ffi_checkcdata(L, 1);
  CTState *cts = ctype_cts(L);
  CType *ct = ctype_raw(cts, cd->ctypeid);
  if (ctype_isptr(ct->info) && (LJ_32 || ct->size == 8)) {
    MSize slot = lj_ccallback_ptr2slot(cts, *(void **)cdataptr(cd));
    if (slot < cts->cb.sizeid && cts->cb.cbid[slot] != 0) {
      GCtab *t = cts->miscmap;
      TValue *tv = lj_tab_setint(L, t, (int32_t)slot);
      if (fn) {
 setfuncV(L, tv, fn);
 lj_gc_anybarriert(L, t);
      } else {
 setnilV(tv);
 cts->cb.cbid[slot] = 0;
 cts->cb.topid = slot < cts->cb.topid ? slot : cts->cb.topid;
      }
      return 0;
    }
  }
  lj_err_caller(L, LJ_ERR_FFI_BADCBACK);
  return 0;
}
