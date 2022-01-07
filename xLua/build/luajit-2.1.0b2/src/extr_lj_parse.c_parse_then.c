
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LexState ;
typedef int BCPos ;


 int TK_then ;
 int expr_cond (int *) ;
 int lex_check (int *,int ) ;
 int lj_lex_next (int *) ;
 int parse_block (int *) ;

__attribute__((used)) static BCPos parse_then(LexState *ls)
{
  BCPos condexit;
  lj_lex_next(ls);
  condexit = expr_cond(ls);
  lex_check(ls, TK_then);
  parse_block(ls);
  return condexit;
}
