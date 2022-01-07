
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ lookahead; int lookaheadval; } ;
typedef scalar_t__ LexToken ;
typedef TYPE_1__ LexState ;


 scalar_t__ TK_eof ;
 scalar_t__ lex_scan (TYPE_1__*,int *) ;
 int lua_assert (int) ;

LexToken lj_lex_lookahead(LexState *ls)
{
  lua_assert(ls->lookahead == TK_eof);
  ls->lookahead = lex_scan(ls, &ls->lookaheadval);
  return ls->lookahead;
}
