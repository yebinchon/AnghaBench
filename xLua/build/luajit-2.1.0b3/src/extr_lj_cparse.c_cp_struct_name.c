
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ id; } ;
struct TYPE_14__ {char tok; int mode; int cts; int str; TYPE_2__* ct; TYPE_1__ val; int tmask; } ;
struct TYPE_13__ {int info; scalar_t__ size; int sib; int name; } ;
typedef scalar_t__ CTypeID ;
typedef TYPE_2__ CType ;
typedef int CTInfo ;
typedef TYPE_3__ CPState ;
typedef int CPDecl ;


 int CPARSE_MODE_NOIMPLICIT ;
 int CPNS_DEFAULT ;
 int CPNS_STRUCT ;
 int CTF_UNION ;
 int CTMASK_NUM ;
 scalar_t__ CTOK_IDENT ;
 scalar_t__ CTSIZE_INVALID ;
 int LJ_ERR_FFI_BADTAG ;
 int LJ_ERR_FFI_REDEF ;
 int cp_decl_attributes (TYPE_3__*,int *) ;
 int cp_err_token (TYPE_3__*,scalar_t__) ;
 int cp_errmsg (TYPE_3__*,int ,int ,int ) ;
 int cp_next (TYPE_3__*) ;
 int ctype_setname (TYPE_2__*,int ) ;
 int gco2str (int ) ;
 int gcref (int ) ;
 int lj_ctype_addname (int ,TYPE_2__*,scalar_t__) ;
 scalar_t__ lj_ctype_new (int ,TYPE_2__**) ;
 int strdata (int ) ;

__attribute__((used)) static CTypeID cp_struct_name(CPState *cp, CPDecl *sdecl, CTInfo info)
{
  CTypeID sid;
  CType *ct;
  cp->tmask = CPNS_STRUCT;
  cp_next(cp);
  cp_decl_attributes(cp, sdecl);
  cp->tmask = CPNS_DEFAULT;
  if (cp->tok != '{') {
    if (cp->tok != CTOK_IDENT) cp_err_token(cp, CTOK_IDENT);
    if (cp->val.id) {
      sid = cp->val.id;
      ct = cp->ct;
      if ((ct->info ^ info) & (CTMASK_NUM|CTF_UNION))
 cp_errmsg(cp, 0, LJ_ERR_FFI_REDEF, strdata(gco2str(gcref(ct->name))));
    } else {
      if ((cp->mode & CPARSE_MODE_NOIMPLICIT))
 cp_errmsg(cp, 0, LJ_ERR_FFI_BADTAG, strdata(cp->str));
      sid = lj_ctype_new(cp->cts, &ct);
      ct->info = info;
      ct->size = CTSIZE_INVALID;
      ctype_setname(ct, cp->str);
      lj_ctype_addname(cp->cts, ct, sid);
    }
    cp_next(cp);
  } else {
    sid = lj_ctype_new(cp->cts, &ct);
    ct->info = info;
    ct->size = CTSIZE_INVALID;
  }
  if (cp->tok == '{') {
    if (ct->size != CTSIZE_INVALID || ct->sib)
      cp_errmsg(cp, 0, LJ_ERR_FFI_REDEF, strdata(gco2str(gcref(ct->name))));
    ct->sib = 1;
  }
  return sid;
}
