
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {int * top; int * base; } ;
typedef TYPE_2__ lua_State ;
struct TYPE_12__ {scalar_t__ id; } ;
struct TYPE_15__ {int mode; TYPE_1__ val; int * param; void* p; void* srcname; int * cts; TYPE_2__* L; } ;
struct TYPE_14__ {scalar_t__ ctypeid; } ;
typedef int TValue ;
typedef int GCstr ;
typedef TYPE_3__ GCcdata ;
typedef scalar_t__ CTypeID ;
typedef int CTState ;
typedef TYPE_4__ CPState ;


 int CPARSE_MODE_ABSTRACT ;
 int CPARSE_MODE_NOIMPLICIT ;
 scalar_t__ CTID_CTYPEID ;
 int LJ_ERR_FFI_NUMPARAM ;
 TYPE_3__* cdataV (int *) ;
 scalar_t__ cdataptr (TYPE_3__*) ;
 int lj_cparse (TYPE_4__*) ;
 int lj_err_arg (TYPE_2__*,int,int ) ;
 int lj_err_argtype (TYPE_2__*,int,char*) ;
 int lj_err_throw (TYPE_2__*,int) ;
 int * strV (int *) ;
 void* strdata (int *) ;
 int tviscdata (int *) ;
 scalar_t__ tvisstr (int *) ;

__attribute__((used)) static CTypeID ffi_checkctype(lua_State *L, CTState *cts, TValue *param)
{
  TValue *o = L->base;
  if (!(o < L->top)) {
  err_argtype:
    lj_err_argtype(L, 1, "C type");
  }
  if (tvisstr(o)) {
    GCstr *s = strV(o);
    CPState cp;
    int errcode;
    cp.L = L;
    cp.cts = cts;
    cp.srcname = strdata(s);
    cp.p = strdata(s);
    cp.param = param;
    cp.mode = CPARSE_MODE_ABSTRACT|CPARSE_MODE_NOIMPLICIT;
    errcode = lj_cparse(&cp);
    if (errcode) lj_err_throw(L, errcode);
    return cp.val.id;
  } else {
    GCcdata *cd;
    if (!tviscdata(o)) goto err_argtype;
    if (param && param < L->top) lj_err_arg(L, 1, LJ_ERR_FFI_NUMPARAM);
    cd = cdataV(o);
    return cd->ctypeid == CTID_CTYPEID ? *(CTypeID *)cdataptr(cd) : cd->ctypeid;
  }
}
