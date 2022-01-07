
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int info; scalar_t__ size; scalar_t__ sib; } ;
typedef scalar_t__ CTypeID ;
typedef TYPE_1__ CType ;
typedef int CTState ;


 int CTF_VARARG ;
 scalar_t__ CTSIZE_PTR ;
 scalar_t__ LJ_64 ;
 int LUA_MINSTACK ;
 TYPE_1__* ctype_get (int *,scalar_t__) ;
 int ctype_isattrib (int) ;
 scalar_t__ ctype_isenum (int) ;
 int ctype_isfield (int) ;
 scalar_t__ ctype_isfunc (int) ;
 scalar_t__ ctype_isnum (int) ;
 scalar_t__ ctype_isptr (int) ;
 scalar_t__ ctype_isvoid (int) ;
 TYPE_1__* ctype_rawchild (int *,TYPE_1__*) ;
 int lua_assert (int ) ;

__attribute__((used)) static CType *callback_checkfunc(CTState *cts, CType *ct)
{
  int narg = 0;
  if (!ctype_isptr(ct->info) || (LJ_64 && ct->size != CTSIZE_PTR))
    return ((void*)0);
  ct = ctype_rawchild(cts, ct);
  if (ctype_isfunc(ct->info)) {
    CType *ctr = ctype_rawchild(cts, ct);
    CTypeID fid = ct->sib;
    if (!(ctype_isvoid(ctr->info) || ctype_isenum(ctr->info) ||
   ctype_isptr(ctr->info) || (ctype_isnum(ctr->info) && ctr->size <= 8)))
      return ((void*)0);
    if ((ct->info & CTF_VARARG))
      return ((void*)0);
    while (fid) {
      CType *ctf = ctype_get(cts, fid);
      if (!ctype_isattrib(ctf->info)) {
 CType *cta;
 lua_assert(ctype_isfield(ctf->info));
 cta = ctype_rawchild(cts, ctf);
 if (!(ctype_isenum(cta->info) || ctype_isptr(cta->info) ||
       (ctype_isnum(cta->info) && cta->size <= 8)) ||
     ++narg >= LUA_MINSTACK-3)
   return ((void*)0);
      }
      fid = ctf->sib;
    }
    return ct;
  }
  return ((void*)0);
}
