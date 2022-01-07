
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;


struct TYPE_25__ {int L; } ;
struct TYPE_24__ {char tok; int * str; TYPE_5__* cts; } ;
struct TYPE_23__ {scalar_t__ u32; int id; } ;
struct TYPE_22__ {scalar_t__ size; int info; } ;
typedef int GCstr ;
typedef TYPE_1__ CType ;
typedef int CTSize ;
typedef TYPE_2__ CPValue ;
typedef TYPE_3__ CPState ;


 char CTOK_DEREF ;
 char CTOK_IDENT ;
 scalar_t__ CTSIZE_INVALID ;
 int LJ_ERR_FFI_BADMEMBER ;
 int cp_check (TYPE_3__*,char) ;
 int cp_err_badidx (TYPE_3__*,TYPE_1__*) ;
 int cp_err_token (TYPE_3__*,char) ;
 int cp_errmsg (TYPE_3__*,int ,int ,int ,int ) ;
 int cp_expr_comma (TYPE_3__*,TYPE_2__*) ;
 int cp_next (TYPE_3__*) ;
 scalar_t__ cp_opt (TYPE_3__*,char) ;
 int ctype_cid (int ) ;
 scalar_t__ ctype_isbitfield (int ) ;
 scalar_t__ ctype_isconstval (int ) ;
 int ctype_ispointer (int ) ;
 int ctype_isstruct (int ) ;
 int ctype_typeid (TYPE_5__*,TYPE_1__*) ;
 TYPE_1__* lj_ctype_getfield (TYPE_5__*,TYPE_1__*,int *,int *) ;
 TYPE_1__* lj_ctype_rawref (TYPE_5__*,int ) ;
 int * lj_ctype_repr (int ,int ,int *) ;
 int strdata (int *) ;

__attribute__((used)) static void cp_expr_postfix(CPState *cp, CPValue *k)
{
  for (;;) {
    CType *ct;
    if (cp_opt(cp, '[')) {
      CPValue k2;
      cp_expr_comma(cp, &k2);
      ct = lj_ctype_rawref(cp->cts, k->id);
      if (!ctype_ispointer(ct->info)) {
 ct = lj_ctype_rawref(cp->cts, k2.id);
 if (!ctype_ispointer(ct->info))
   cp_err_badidx(cp, ct);
      }
      cp_check(cp, ']');
      k->u32 = 0;
    } else if (cp->tok == '.' || cp->tok == CTOK_DEREF) {
      CTSize ofs;
      CType *fct;
      ct = lj_ctype_rawref(cp->cts, k->id);
      if (cp->tok == CTOK_DEREF) {
 if (!ctype_ispointer(ct->info))
   cp_err_badidx(cp, ct);
 ct = lj_ctype_rawref(cp->cts, ctype_cid(ct->info));
      }
      cp_next(cp);
      if (cp->tok != CTOK_IDENT) cp_err_token(cp, CTOK_IDENT);
      if (!ctype_isstruct(ct->info) || ct->size == CTSIZE_INVALID ||
   !(fct = lj_ctype_getfield(cp->cts, ct, cp->str, &ofs)) ||
   ctype_isbitfield(fct->info)) {
 GCstr *s = lj_ctype_repr(cp->cts->L, ctype_typeid(cp->cts, ct), ((void*)0));
 cp_errmsg(cp, 0, LJ_ERR_FFI_BADMEMBER, strdata(s), strdata(cp->str));
      }
      ct = fct;
      k->u32 = ctype_isconstval(ct->info) ? ct->size : 0;
      cp_next(cp);
    } else {
      return;
    }
    k->id = ctype_cid(ct->info);
  }
}
