
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int lua_State ;
typedef int cTValue ;
struct TYPE_5__ {int ctypeid; } ;
struct TYPE_4__ {int info; } ;
typedef int MMS ;
typedef int CTypeID ;
typedef TYPE_1__ CType ;
typedef int CTState ;


 int G (int *) ;
 int LJ_ERR_FFI_BADMM ;
 int ctype_cid (int ) ;
 int * ctype_cts (int *) ;
 scalar_t__ ctype_isptr (int ) ;
 TYPE_1__* ctype_raw (int *,int ) ;
 TYPE_2__* ffi_checkcdata (int *,int) ;
 int * lj_ctype_meta (int *,int ,int ) ;
 int lj_ctype_repr (int *,int ,int *) ;
 int lj_err_callerv (int *,int ,int ,int ) ;
 int lj_meta_tailcall (int *,int *) ;
 int mmname_str (int ,int ) ;
 int strdata (int ) ;

__attribute__((used)) static int ffi_pairs(lua_State *L, MMS mm)
{
  CTState *cts = ctype_cts(L);
  CTypeID id = ffi_checkcdata(L, 1)->ctypeid;
  CType *ct = ctype_raw(cts, id);
  cTValue *tv;
  if (ctype_isptr(ct->info)) id = ctype_cid(ct->info);
  tv = lj_ctype_meta(cts, id, mm);
  if (!tv)
    lj_err_callerv(L, LJ_ERR_FFI_BADMM, strdata(lj_ctype_repr(L, id, ((void*)0))),
     strdata(mmname_str(G(L), mm)));
  return lj_meta_tailcall(L, tv);
}
