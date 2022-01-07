
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_9__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int * top; int * base; } ;
typedef TYPE_1__ lua_State ;
typedef int cTValue ;
struct TYPE_11__ {int ctypeid; } ;
typedef int TValue ;
typedef int MMS ;
typedef int CTypeID ;
typedef int CType ;
typedef int CTState ;


 int LJ_ERR_FFI_BADIDXW ;
 int LJ_ERR_FFI_BADMEMBER ;
 int * LJ_FR2 ;
 int MM_index ;
 TYPE_9__* cdataV (int *) ;
 int copyTV (TYPE_1__*,int *,int *) ;
 int ctype_typeid (int *,int *) ;
 int * lj_ctype_meta (int *,int ,int ) ;
 int lj_ctype_repr (TYPE_1__*,int ,int *) ;
 int lj_err_callerv (TYPE_1__*,int ,char const*,char const*) ;
 int lj_meta_tailcall (TYPE_1__*,int *) ;
 int * lj_meta_tget (TYPE_1__*,int *,int *) ;
 int * lj_meta_tset (TYPE_1__*,int *,int *) ;
 char* lj_typename (int *) ;
 char const* strVdata (int *) ;
 char* strdata (int ) ;
 scalar_t__ tviscdata (int *) ;
 int tvisfunc (int *) ;
 scalar_t__ tvisnil (int *) ;
 scalar_t__ tvisstr (int *) ;

__attribute__((used)) static int ffi_index_meta(lua_State *L, CTState *cts, CType *ct, MMS mm)
{
  CTypeID id = ctype_typeid(cts, ct);
  cTValue *tv = lj_ctype_meta(cts, id, mm);
  TValue *base = L->base;
  if (!tv) {
    const char *s;
  err_index:
    s = strdata(lj_ctype_repr(L, id, ((void*)0)));
    if (tvisstr(L->base+1)) {
      lj_err_callerv(L, LJ_ERR_FFI_BADMEMBER, s, strVdata(L->base+1));
    } else {
      const char *key = tviscdata(L->base+1) ?
 strdata(lj_ctype_repr(L, cdataV(L->base+1)->ctypeid, ((void*)0))) :
 lj_typename(L->base+1);
      lj_err_callerv(L, LJ_ERR_FFI_BADIDXW, s, key);
    }
  }
  if (!tvisfunc(tv)) {
    if (mm == MM_index) {
      cTValue *o = lj_meta_tget(L, tv, base+1);
      if (o) {
 if (tvisnil(o)) goto err_index;
 copyTV(L, L->top-1, o);
 return 1;
      }
    } else {
      TValue *o = lj_meta_tset(L, tv, base+1);
      if (o) {
 copyTV(L, o, base+2);
 return 0;
      }
    }
    copyTV(L, base, L->top);
    tv = L->top-1-LJ_FR2;
  }
  return lj_meta_tailcall(L, tv);
}
