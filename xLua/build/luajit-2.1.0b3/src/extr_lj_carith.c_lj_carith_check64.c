
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_12__ ;


typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_15__ {int * top; int * base; } ;
typedef TYPE_1__ lua_State ;
typedef int int32_t ;
struct TYPE_16__ {int info; int size; } ;
struct TYPE_14__ {int ctypeid; } ;
typedef int TValue ;
typedef int CTypeID ;
typedef TYPE_2__ CType ;
typedef int CTState ;


 int CCF_ARG (int) ;
 int CTF_BOOL ;
 int CTF_FP ;
 int CTF_UNSIGNED ;
 int CTID_INT64 ;
 int CTID_UINT64 ;
 int CTINFO (int ,int) ;
 int CTMASK_NUM ;
 int CT_NUM ;
 scalar_t__ LJ_DUALNUM ;
 scalar_t__ LJ_LIKELY (int ) ;
 int LUA_TNUMBER ;
 TYPE_12__* cdataV (int *) ;
 scalar_t__ cdataptr (TYPE_12__*) ;
 TYPE_2__* ctype_child (int *,TYPE_2__*) ;
 int ctype_cid (int) ;
 int * ctype_cts (TYPE_1__*) ;
 TYPE_2__* ctype_get (int *,int ) ;
 scalar_t__ ctype_isenum (int) ;
 scalar_t__ ctype_isref (int) ;
 TYPE_2__* ctype_raw (int *,int ) ;
 int intV (int *) ;
 int lj_cconv_ct_ct (int *,TYPE_2__*,TYPE_2__*,int *,int *,int ) ;
 int lj_err_argt (TYPE_1__*,int,int ) ;
 int lj_num2bit (int ) ;
 scalar_t__ lj_strscan_number (int ,int *) ;
 int numV (int *) ;
 int setintV (int *,int ) ;
 int strV (int *) ;
 scalar_t__ tviscdata (int *) ;
 int tvisint (int *) ;
 int tvisnumber (int *) ;
 scalar_t__ tvisstr (int *) ;

uint64_t lj_carith_check64(lua_State *L, int narg, CTypeID *id)
{
  TValue *o = L->base + narg-1;
  if (o >= L->top) {
  err:
    lj_err_argt(L, narg, LUA_TNUMBER);
  } else if (LJ_LIKELY(tvisnumber(o))) {

  } else if (tviscdata(o)) {
    CTState *cts = ctype_cts(L);
    uint8_t *sp = (uint8_t *)cdataptr(cdataV(o));
    CTypeID sid = cdataV(o)->ctypeid;
    CType *s = ctype_get(cts, sid);
    uint64_t x;
    if (ctype_isref(s->info)) {
      sp = *(void **)sp;
      sid = ctype_cid(s->info);
    }
    s = ctype_raw(cts, sid);
    if (ctype_isenum(s->info)) s = ctype_child(cts, s);
    if ((s->info & (CTMASK_NUM|CTF_BOOL|CTF_FP|CTF_UNSIGNED)) ==
 CTINFO(CT_NUM, CTF_UNSIGNED) && s->size == 8)
      *id = CTID_UINT64;
    else if (!*id)
      *id = CTID_INT64;
    lj_cconv_ct_ct(cts, ctype_get(cts, *id), s,
     (uint8_t *)&x, sp, CCF_ARG(narg));
    return x;
  } else if (!(tvisstr(o) && lj_strscan_number(strV(o), o))) {
    goto err;
  }
  if (LJ_LIKELY(tvisint(o))) {
    return (uint32_t)intV(o);
  } else {
    int32_t i = lj_num2bit(numV(o));
    if (LJ_DUALNUM) setintV(o, i);
    return (uint32_t)i;
  }
}
