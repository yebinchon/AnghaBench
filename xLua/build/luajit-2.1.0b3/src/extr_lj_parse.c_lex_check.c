
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int tok; } ;
typedef int LexToken ;
typedef TYPE_1__ LexState ;


 int err_token (TYPE_1__*,int ) ;
 int lj_lex_next (TYPE_1__*) ;

__attribute__((used)) static void lex_check(LexState *ls, LexToken tok)
{
  if (ls->tok != tok)
    err_token(ls, tok);
  lj_lex_next(ls);
}
