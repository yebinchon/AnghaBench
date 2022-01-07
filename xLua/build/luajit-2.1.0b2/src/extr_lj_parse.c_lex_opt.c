
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ tok; } ;
typedef scalar_t__ LexToken ;
typedef TYPE_1__ LexState ;


 int lj_lex_next (TYPE_1__*) ;

__attribute__((used)) static int lex_opt(LexState *ls, LexToken tok)
{
  if (ls->tok == tok) {
    lj_lex_next(ls);
    return 1;
  }
  return 0;
}
