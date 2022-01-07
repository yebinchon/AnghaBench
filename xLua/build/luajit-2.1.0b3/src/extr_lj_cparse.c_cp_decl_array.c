
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {char tok; } ;
typedef int CTSize ;
typedef int CTInfo ;
typedef TYPE_1__ CPState ;
typedef int CPDecl ;


 int CTF_VLA ;
 int CTINFO (int ,int ) ;
 int CTSIZE_INVALID ;
 int CT_ARRAY ;
 int cp_add (int *,int ,int ) ;
 int cp_check (TYPE_1__*,char) ;
 int cp_decl_attributes (TYPE_1__*,int *) ;
 int cp_expr_ksize (TYPE_1__*) ;
 scalar_t__ cp_opt (TYPE_1__*,char) ;

__attribute__((used)) static void cp_decl_array(CPState *cp, CPDecl *decl)
{
  CTInfo info = CTINFO(CT_ARRAY, 0);
  CTSize nelem = CTSIZE_INVALID;
  cp_decl_attributes(cp, decl);
  if (cp_opt(cp, '?'))
    info |= CTF_VLA;
  else if (cp->tok != ']')
    nelem = cp_expr_ksize(cp);
  cp_check(cp, ']');
  cp_add(decl, info, nelem);
}
