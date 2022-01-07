
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_50__ TYPE_4__ ;
typedef struct TYPE_49__ TYPE_3__ ;
typedef struct TYPE_48__ TYPE_38__ ;
typedef struct TYPE_47__ TYPE_2__ ;
typedef struct TYPE_46__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_50__ {scalar_t__ size; int info; } ;
struct TYPE_49__ {scalar_t__ len; } ;
struct TYPE_48__ {int ctypeid; } ;
struct TYPE_47__ {scalar_t__ udtype; } ;
struct TYPE_46__ {int n; int i; } ;
typedef TYPE_1__ TValue ;
typedef TYPE_2__ GCudata ;
typedef TYPE_3__ GCstr ;
typedef int CTypeID ;
typedef TYPE_4__ CType ;
typedef int CTState ;
typedef scalar_t__ CTSize ;
typedef int CTInfo ;


 int CCF_FROMTV ;
 int CTALIGN_PTR ;
 int CTID_A_CCHAR ;
 int CTID_BOOL ;
 int CTID_DOUBLE ;
 int CTID_INT32 ;
 int CTID_P_VOID ;
 int CTINFO (int ,int) ;
 scalar_t__ CTSIZE_PTR ;
 int CT_PTR ;
 scalar_t__ LJ_LIKELY (int ) ;
 scalar_t__ UDTYPE_IO_FILE ;
 int boolV (TYPE_1__*) ;
 int cconv_array_tab (int *,TYPE_4__*,int *,int ,int ) ;
 int cconv_err_convtv (int *,TYPE_4__*,TYPE_1__*,int ) ;
 int cconv_struct_tab (int *,TYPE_4__*,int *,int ,int ) ;
 TYPE_38__* cdataV (TYPE_1__*) ;
 int * cdataptr (TYPE_38__*) ;
 TYPE_4__* ctype_child (int *,TYPE_4__*) ;
 int ctype_cid (int ) ;
 TYPE_4__* ctype_get (int *,int) ;
 scalar_t__ ctype_isarray (int ) ;
 int ctype_isconstval (int ) ;
 scalar_t__ ctype_isenum (int ) ;
 scalar_t__ ctype_isfunc (int ) ;
 int ctype_isinteger (int ) ;
 scalar_t__ ctype_isref (int ) ;
 scalar_t__ ctype_isrefarray (int ) ;
 scalar_t__ ctype_isstruct (int ) ;
 TYPE_4__* ctype_raw (int *,int) ;
 TYPE_4__* ctype_rawchild (int *,TYPE_4__*) ;
 int funcV (TYPE_1__*) ;
 void* lightudV (TYPE_1__*) ;
 void* lj_ccallback_new (int *,TYPE_4__*,int ) ;
 int lj_cconv_ct_ct (int *,TYPE_4__*,TYPE_4__*,int *,int *,int ) ;
 TYPE_4__* lj_ctype_getfield (int *,TYPE_4__*,TYPE_3__*,scalar_t__*) ;
 int lj_ctype_intern (int *,int ,scalar_t__) ;
 int lua_assert (int) ;
 int memcpy (int *,scalar_t__,scalar_t__) ;
 TYPE_3__* strV (TYPE_1__*) ;
 scalar_t__ strdata (TYPE_3__*) ;
 int tabV (TYPE_1__*) ;
 scalar_t__ tvisbool (TYPE_1__*) ;
 scalar_t__ tviscdata (TYPE_1__*) ;
 scalar_t__ tvisfunc (TYPE_1__*) ;
 int tvisint (TYPE_1__*) ;
 scalar_t__ tvislightud (TYPE_1__*) ;
 scalar_t__ tvisnil (TYPE_1__*) ;
 int tvisnum (TYPE_1__*) ;
 scalar_t__ tvisstr (TYPE_1__*) ;
 scalar_t__ tvistab (TYPE_1__*) ;
 scalar_t__ tvisudata (TYPE_1__*) ;
 TYPE_2__* udataV (TYPE_1__*) ;
 void* uddata (TYPE_2__*) ;

void lj_cconv_ct_tv(CTState *cts, CType *d,
      uint8_t *dp, TValue *o, CTInfo flags)
{
  CTypeID sid = CTID_P_VOID;
  CType *s;
  void *tmpptr;
  uint8_t tmpbool, *sp = (uint8_t *)&tmpptr;
  if (LJ_LIKELY(tvisint(o))) {
    sp = (uint8_t *)&o->i;
    sid = CTID_INT32;
    flags |= CCF_FROMTV;
  } else if (LJ_LIKELY(tvisnum(o))) {
    sp = (uint8_t *)&o->n;
    sid = CTID_DOUBLE;
    flags |= CCF_FROMTV;
  } else if (tviscdata(o)) {
    sp = cdataptr(cdataV(o));
    sid = cdataV(o)->ctypeid;
    s = ctype_get(cts, sid);
    if (ctype_isref(s->info)) {
      lua_assert(s->size == CTSIZE_PTR);
      sp = *(void **)sp;
      sid = ctype_cid(s->info);
    }
    s = ctype_raw(cts, sid);
    if (ctype_isfunc(s->info)) {
      sid = lj_ctype_intern(cts, CTINFO(CT_PTR, CTALIGN_PTR|sid), CTSIZE_PTR);
    } else {
      if (ctype_isenum(s->info)) s = ctype_child(cts, s);
      goto doconv;
    }
  } else if (tvisstr(o)) {
    GCstr *str = strV(o);
    if (ctype_isenum(d->info)) {
      CTSize ofs;
      CType *cct = lj_ctype_getfield(cts, d, str, &ofs);
      if (!cct || !ctype_isconstval(cct->info))
 goto err_conv;
      lua_assert(d->size == 4);
      sp = (uint8_t *)&cct->size;
      sid = ctype_cid(cct->info);
    } else if (ctype_isrefarray(d->info)) {
      CType *dc = ctype_rawchild(cts, d);
      CTSize sz = str->len+1;
      if (!ctype_isinteger(dc->info) || dc->size != 1)
 goto err_conv;
      if (d->size != 0 && d->size < sz)
 sz = d->size;
      memcpy(dp, strdata(str), sz);
      return;
    } else {
      sp = (uint8_t *)strdata(str);
      sid = CTID_A_CCHAR;
      flags |= CCF_FROMTV;
    }
  } else if (tvistab(o)) {
    if (ctype_isarray(d->info)) {
      cconv_array_tab(cts, d, dp, tabV(o), flags);
      return;
    } else if (ctype_isstruct(d->info)) {
      cconv_struct_tab(cts, d, dp, tabV(o), flags);
      return;
    } else {
      goto err_conv;
    }
  } else if (tvisbool(o)) {
    tmpbool = boolV(o);
    sp = &tmpbool;
    sid = CTID_BOOL;
  } else if (tvisnil(o)) {
    tmpptr = (void *)0;
    flags |= CCF_FROMTV;
  } else if (tvisudata(o)) {
    GCudata *ud = udataV(o);
    tmpptr = uddata(ud);
    if (ud->udtype == UDTYPE_IO_FILE)
      tmpptr = *(void **)tmpptr;
  } else if (tvislightud(o)) {
    tmpptr = lightudV(o);
  } else if (tvisfunc(o)) {
    void *p = lj_ccallback_new(cts, d, funcV(o));
    if (p) {
      *(void **)dp = p;
      return;
    }
    goto err_conv;
  } else {
  err_conv:
    cconv_err_convtv(cts, d, o, flags);
  }
  s = ctype_get(cts, sid);
doconv:
  if (ctype_isenum(d->info)) d = ctype_child(cts, d);
  lj_cconv_ct_ct(cts, d, s, dp, sp, flags);
}
