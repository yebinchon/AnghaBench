
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int tok; } ;
typedef int CPToken ;
typedef TYPE_1__ CPState ;


 int cp_err_token (TYPE_1__*,int ) ;
 int cp_next (TYPE_1__*) ;

__attribute__((used)) static void cp_check(CPState *cp, CPToken tok)
{
  if (cp->tok != tok) cp_err_token(cp, tok);
  cp_next(cp);
}
