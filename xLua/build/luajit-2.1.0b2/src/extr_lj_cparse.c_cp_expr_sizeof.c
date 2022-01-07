
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_15__ {int cts; } ;
struct TYPE_14__ {scalar_t__ id; unsigned int u32; } ;
typedef scalar_t__ CTSize ;
typedef int CTInfo ;
typedef TYPE_1__ CPValue ;
typedef TYPE_2__ CPState ;


 scalar_t__ CTID_A_CCHAR ;
 scalar_t__ CTID_UINT32 ;
 scalar_t__ CTSIZE_INVALID ;
 int LJ_ERR_FFI_INVSIZE ;
 int cp_check (TYPE_2__*,char) ;
 scalar_t__ cp_decl_abstract (TYPE_2__*) ;
 int cp_err (TYPE_2__*,int ) ;
 int cp_expr_comma (TYPE_2__*,TYPE_1__*) ;
 int cp_expr_unary (TYPE_2__*,TYPE_1__*) ;
 scalar_t__ cp_istypedecl (TYPE_2__*) ;
 scalar_t__ cp_opt (TYPE_2__*,char) ;
 unsigned int ctype_align (int ) ;
 int lj_ctype_info (int ,scalar_t__,scalar_t__*) ;

__attribute__((used)) static void cp_expr_sizeof(CPState *cp, CPValue *k, int wantsz)
{
  CTSize sz;
  CTInfo info;
  if (cp_opt(cp, '(')) {
    if (cp_istypedecl(cp))
      k->id = cp_decl_abstract(cp);
    else
      cp_expr_comma(cp, k);
    cp_check(cp, ')');
  } else {
    cp_expr_unary(cp, k);
  }
  info = lj_ctype_info(cp->cts, k->id, &sz);
  if (wantsz) {
    if (sz != CTSIZE_INVALID)
      k->u32 = sz;
    else if (k->id != CTID_A_CCHAR)
      cp_err(cp, LJ_ERR_FFI_INVSIZE);
  } else {
    k->u32 = 1u << ctype_align(info);
  }
  k->id = CTID_UINT32;
}
