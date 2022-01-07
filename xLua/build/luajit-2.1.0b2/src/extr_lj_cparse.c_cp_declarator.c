
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


struct TYPE_23__ {int attr; int mode; int bits; int nameid; int name; int pos; } ;
struct TYPE_21__ {int id; } ;
struct TYPE_22__ {scalar_t__ depth; char tok; TYPE_1__ val; int str; } ;
typedef int CTSize ;
typedef int CTInfo ;
typedef TYPE_2__ CPState ;
typedef int CPDeclIdx ;
typedef TYPE_3__ CPDecl ;


 scalar_t__ CPARSE_MAX_DECLDEPTH ;
 int CPARSE_MODE_ABSTRACT ;
 int CPARSE_MODE_DIRECT ;
 int CPARSE_MODE_FIELD ;
 int CTALIGN (int) ;
 int CTALIGN_PTR ;
 int CTF_QUAL ;
 int CTF_REF ;
 int CTINFO (int ,int ) ;
 int CTINFO_REF (int ) ;
 int CTMASK_MSIZEP ;
 char CTOK_ANDAND ;
 char CTOK_EOF ;
 char CTOK_IDENT ;
 int CTSHIFT_MSIZEP ;
 int CTSIZE_PTR ;
 int CT_PTR ;
 int LJ_ERR_XLEVELS ;
 int cp_check (TYPE_2__*,char) ;
 int cp_decl_array (TYPE_2__*,TYPE_3__*) ;
 int cp_decl_attributes (TYPE_2__*,TYPE_3__*) ;
 int cp_decl_func (TYPE_2__*,TYPE_3__*) ;
 int cp_err (TYPE_2__*,int ) ;
 int cp_err_token (TYPE_2__*,char) ;
 int cp_expr_ksize (TYPE_2__*) ;
 scalar_t__ cp_istypedecl (TYPE_2__*) ;
 int cp_next (TYPE_2__*) ;
 scalar_t__ cp_opt (TYPE_2__*,char) ;
 int cp_push (TYPE_3__*,int,int) ;
 int cp_push_attributes (TYPE_3__*) ;
 int ctype_msizeP (int) ;

__attribute__((used)) static void cp_declarator(CPState *cp, CPDecl *decl)
{
  if (++cp->depth > CPARSE_MAX_DECLDEPTH) cp_err(cp, LJ_ERR_XLEVELS);

  for (;;) {
    if (cp_opt(cp, '*')) {
      CTSize sz;
      CTInfo info;
      cp_decl_attributes(cp, decl);
      sz = CTSIZE_PTR;
      info = CTINFO(CT_PTR, CTALIGN_PTR);






      info += (decl->attr & (CTF_QUAL|CTF_REF));
      decl->attr &= ~(CTF_QUAL|(CTMASK_MSIZEP<<CTSHIFT_MSIZEP));
      cp_push(decl, info, sz);
    } else if (cp_opt(cp, '&') || cp_opt(cp, CTOK_ANDAND)) {
      decl->attr &= ~(CTF_QUAL|(CTMASK_MSIZEP<<CTSHIFT_MSIZEP));
      cp_push(decl, CTINFO_REF(0), CTSIZE_PTR);
    } else {
      break;
    }
  }

  if (cp_opt(cp, '(')) {
    CPDeclIdx pos;
    cp_decl_attributes(cp, decl);

    if ((decl->mode & CPARSE_MODE_ABSTRACT) &&
 (cp->tok == ')' || cp_istypedecl(cp))) goto func_decl;
    pos = decl->pos;
    cp_declarator(cp, decl);
    cp_check(cp, ')');
    decl->pos = pos;
  } else if (cp->tok == CTOK_IDENT) {
    if (!(decl->mode & CPARSE_MODE_DIRECT)) cp_err_token(cp, CTOK_EOF);
    decl->name = cp->str;
    decl->nameid = cp->val.id;
    cp_next(cp);
  } else {
    if (!(decl->mode & CPARSE_MODE_ABSTRACT)) cp_err_token(cp, CTOK_IDENT);
  }

  for (;;) {
    if (cp_opt(cp, '[')) {
      cp_decl_array(cp, decl);
    } else if (cp_opt(cp, '(')) {
    func_decl:
      cp_decl_func(cp, decl);
    } else {
      break;
    }
  }

  if ((decl->mode & CPARSE_MODE_FIELD) && cp_opt(cp, ':'))
    decl->bits = cp_expr_ksize(cp);


  cp_decl_attributes(cp, decl);
  cp_push_attributes(decl);

  cp->depth--;
}
