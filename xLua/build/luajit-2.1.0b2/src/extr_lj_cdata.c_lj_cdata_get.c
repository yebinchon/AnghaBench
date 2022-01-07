
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_9__ {scalar_t__ size; int info; } ;
typedef int TValue ;
typedef int CTypeID ;
typedef TYPE_1__ CType ;
typedef int CTState ;


 scalar_t__ CTSIZE_PTR ;
 int cdata_getconst (int *,int *,TYPE_1__*) ;
 TYPE_1__* ctype_child (int *,TYPE_1__*) ;
 int ctype_cid (int ) ;
 TYPE_1__* ctype_get (int *,int ) ;
 scalar_t__ ctype_isattrib (int ) ;
 scalar_t__ ctype_isbitfield (int ) ;
 scalar_t__ ctype_isconstval (int ) ;
 scalar_t__ ctype_isfield (int ) ;
 scalar_t__ ctype_ispointer (int ) ;
 scalar_t__ ctype_isref (int ) ;
 int lj_cconv_tv_bf (int *,TYPE_1__*,int *,int *) ;
 int lj_cconv_tv_ct (int *,TYPE_1__*,int ,int *,int *) ;
 int lua_assert (int) ;

int lj_cdata_get(CTState *cts, CType *s, TValue *o, uint8_t *sp)
{
  CTypeID sid;

  if (ctype_isconstval(s->info)) {
    cdata_getconst(cts, o, s);
    return 0;
  } else if (ctype_isbitfield(s->info)) {
    return lj_cconv_tv_bf(cts, s, o, sp);
  }


  lua_assert(ctype_ispointer(s->info) || ctype_isfield(s->info));
  sid = ctype_cid(s->info);
  s = ctype_get(cts, sid);


  if (ctype_isref(s->info)) {
    lua_assert(s->size == CTSIZE_PTR);
    sp = *(uint8_t **)sp;
    sid = ctype_cid(s->info);
    s = ctype_get(cts, sid);
  }


  while (ctype_isattrib(s->info))
    s = ctype_child(cts, s);

  return lj_cconv_tv_ct(cts, s, sid, o, sp);
}
