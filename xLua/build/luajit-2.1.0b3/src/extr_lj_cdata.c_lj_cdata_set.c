
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_13__ {int L; } ;
struct TYPE_12__ {int info; int size; } ;
typedef int TValue ;
typedef TYPE_1__ CType ;
typedef TYPE_2__ CTState ;
typedef int CTInfo ;


 scalar_t__ CTA_QUAL ;
 int CTF_CONST ;
 int CTSIZE_PTR ;
 int LJ_ERR_FFI_WRCONST ;
 scalar_t__ ctype_attrib (int) ;
 TYPE_1__* ctype_child (TYPE_2__*,TYPE_1__*) ;
 scalar_t__ ctype_hassize (int) ;
 scalar_t__ ctype_isattrib (int) ;
 scalar_t__ ctype_isbitfield (int) ;
 scalar_t__ ctype_isconstval (int) ;
 scalar_t__ ctype_isfield (int) ;
 scalar_t__ ctype_ispointer (int) ;
 scalar_t__ ctype_isref (int) ;
 int ctype_isvoid (int) ;
 int lj_cconv_bf_tv (TYPE_2__*,TYPE_1__*,int *,int *) ;
 int lj_cconv_ct_tv (TYPE_2__*,TYPE_1__*,int *,int *,int ) ;
 int lj_err_caller (int ,int ) ;
 int lua_assert (int) ;

void lj_cdata_set(CTState *cts, CType *d, uint8_t *dp, TValue *o, CTInfo qual)
{
  if (ctype_isconstval(d->info)) {
    goto err_const;
  } else if (ctype_isbitfield(d->info)) {
    if (((d->info|qual) & CTF_CONST)) goto err_const;
    lj_cconv_bf_tv(cts, d, dp, o);
    return;
  }


  lua_assert(ctype_ispointer(d->info) || ctype_isfield(d->info));
  d = ctype_child(cts, d);


  if (ctype_isref(d->info)) {
    lua_assert(d->size == CTSIZE_PTR);
    dp = *(uint8_t **)dp;
    d = ctype_child(cts, d);
  }


  for (;;) {
    if (ctype_isattrib(d->info)) {
      if (ctype_attrib(d->info) == CTA_QUAL) qual |= d->size;
    } else {
      break;
    }
    d = ctype_child(cts, d);
  }

  lua_assert(ctype_hassize(d->info) && !ctype_isvoid(d->info));

  if (((d->info|qual) & CTF_CONST)) {
  err_const:
    lj_err_caller(cts->L, LJ_ERR_FFI_WRCONST);
  }

  lj_cconv_ct_tv(cts, d, dp, o, 0);
}
