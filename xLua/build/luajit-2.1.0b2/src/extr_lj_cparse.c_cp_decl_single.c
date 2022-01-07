
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int id; } ;
struct TYPE_9__ {scalar_t__ tok; TYPE_1__ val; } ;
typedef TYPE_2__ CPState ;
typedef int CPDecl ;


 scalar_t__ CTOK_EOF ;
 int cp_decl_intern (TYPE_2__*,int *) ;
 int cp_decl_spec (TYPE_2__*,int *,int ) ;
 int cp_declarator (TYPE_2__*,int *) ;
 int cp_err_token (TYPE_2__*,scalar_t__) ;

__attribute__((used)) static void cp_decl_single(CPState *cp)
{
  CPDecl decl;
  cp_decl_spec(cp, &decl, 0);
  cp_declarator(cp, &decl);
  cp->val.id = cp_decl_intern(cp, &decl);
  if (cp->tok != CTOK_EOF) cp_err_token(cp, CTOK_EOF);
}
