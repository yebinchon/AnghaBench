
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int mode; } ;
typedef int CTypeID ;
typedef int CPState ;
typedef TYPE_1__ CPDecl ;


 int CPARSE_MODE_ABSTRACT ;
 int cp_decl_intern (int *,TYPE_1__*) ;
 int cp_decl_spec (int *,TYPE_1__*,int ) ;
 int cp_declarator (int *,TYPE_1__*) ;

__attribute__((used)) static CTypeID cp_decl_abstract(CPState *cp)
{
  CPDecl decl;
  cp_decl_spec(cp, &decl, 0);
  decl.mode = CPARSE_MODE_ABSTRACT;
  cp_declarator(cp, &decl);
  return cp_decl_intern(cp, &decl);
}
