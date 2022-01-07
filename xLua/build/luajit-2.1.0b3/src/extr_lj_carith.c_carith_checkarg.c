
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_5__ ;
typedef struct TYPE_28__ TYPE_4__ ;
typedef struct TYPE_27__ TYPE_3__ ;
typedef struct TYPE_26__ TYPE_2__ ;
typedef struct TYPE_25__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_25__ {TYPE_2__* top; TYPE_2__* base; } ;
typedef TYPE_1__ lua_State ;
struct TYPE_29__ {int ** p; TYPE_4__** ct; } ;
struct TYPE_28__ {int size; int info; } ;
struct TYPE_27__ {int ctypeid; } ;
struct TYPE_26__ {int n; int i; } ;
typedef TYPE_2__ TValue ;
typedef int MSize ;
typedef TYPE_3__ GCcdata ;
typedef int CTypeID ;
typedef TYPE_4__ CType ;
typedef int CTState ;
typedef int CTSize ;
typedef TYPE_5__ CDArith ;


 int CTALIGN_PTR ;
 int CTID_DOUBLE ;
 int CTID_INT32 ;
 int CTID_P_VOID ;
 int CTINFO (int ,int) ;
 int CTSIZE_PTR ;
 int CT_PTR ;
 int LUA_TCDATA ;
 TYPE_3__* cdataV (TYPE_2__*) ;
 scalar_t__ cdata_getptr (int *,int ) ;
 scalar_t__ cdataptr (TYPE_3__*) ;
 void* ctype_child (int *,TYPE_4__*) ;
 void* ctype_get (int *,int ) ;
 scalar_t__ ctype_isconstval (int ) ;
 scalar_t__ ctype_isenum (int ) ;
 scalar_t__ ctype_isfunc (int ) ;
 scalar_t__ ctype_isptr (int ) ;
 scalar_t__ ctype_isref (int ) ;
 TYPE_4__* ctype_raw (int *,int) ;
 TYPE_4__* ctype_rawchild (int *,TYPE_4__*) ;
 TYPE_4__* lj_ctype_getfield (int *,TYPE_4__*,int ,int *) ;
 int lj_ctype_intern (int *,int ,int ) ;
 int lj_err_argt (TYPE_1__*,int,int ) ;
 int strV (TYPE_2__*) ;
 scalar_t__ strVdata (TYPE_2__*) ;
 scalar_t__ tviscdata (TYPE_2__*) ;
 scalar_t__ tvisint (TYPE_2__*) ;
 scalar_t__ tvisnil (TYPE_2__*) ;
 scalar_t__ tvisnum (TYPE_2__*) ;
 scalar_t__ tvisstr (TYPE_2__*) ;

__attribute__((used)) static int carith_checkarg(lua_State *L, CTState *cts, CDArith *ca)
{
  TValue *o = L->base;
  int ok = 1;
  MSize i;
  if (o+1 >= L->top)
    lj_err_argt(L, 1, LUA_TCDATA);
  for (i = 0; i < 2; i++, o++) {
    if (tviscdata(o)) {
      GCcdata *cd = cdataV(o);
      CTypeID id = (CTypeID)cd->ctypeid;
      CType *ct = ctype_raw(cts, id);
      uint8_t *p = (uint8_t *)cdataptr(cd);
      if (ctype_isptr(ct->info)) {
 p = (uint8_t *)cdata_getptr(p, ct->size);
 if (ctype_isref(ct->info)) ct = ctype_rawchild(cts, ct);
      } else if (ctype_isfunc(ct->info)) {
 p = (uint8_t *)*(void **)p;
 ct = ctype_get(cts,
   lj_ctype_intern(cts, CTINFO(CT_PTR, CTALIGN_PTR|id), CTSIZE_PTR));
      }
      if (ctype_isenum(ct->info)) ct = ctype_child(cts, ct);
      ca->ct[i] = ct;
      ca->p[i] = p;
    } else if (tvisint(o)) {
      ca->ct[i] = ctype_get(cts, CTID_INT32);
      ca->p[i] = (uint8_t *)&o->i;
    } else if (tvisnum(o)) {
      ca->ct[i] = ctype_get(cts, CTID_DOUBLE);
      ca->p[i] = (uint8_t *)&o->n;
    } else if (tvisnil(o)) {
      ca->ct[i] = ctype_get(cts, CTID_P_VOID);
      ca->p[i] = (uint8_t *)0;
    } else if (tvisstr(o)) {
      TValue *o2 = i == 0 ? o+1 : o-1;
      CType *ct = ctype_raw(cts, cdataV(o2)->ctypeid);
      ca->ct[i] = ((void*)0);
      ca->p[i] = (uint8_t *)strVdata(o);
      ok = 0;
      if (ctype_isenum(ct->info)) {
 CTSize ofs;
 CType *cct = lj_ctype_getfield(cts, ct, strV(o), &ofs);
 if (cct && ctype_isconstval(cct->info)) {
   ca->ct[i] = ctype_child(cts, cct);
   ca->p[i] = (uint8_t *)&cct->size;
   ok = 1;
 } else {
   ca->ct[1-i] = ct;
   ca->p[1-i] = ((void*)0);
   break;
 }
      }
    } else {
      ca->ct[i] = ((void*)0);
      ca->p[i] = (void *)(intptr_t)1;
      ok = 0;
    }
  }
  return ok;
}
