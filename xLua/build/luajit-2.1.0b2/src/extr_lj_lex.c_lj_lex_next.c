
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ lookahead; scalar_t__ tok; int lookaheadval; int tokval; int linenumber; int lastline; } ;
typedef TYPE_1__ LexState ;


 scalar_t__ LJ_LIKELY (int) ;
 scalar_t__ TK_eof ;
 scalar_t__ lex_scan (TYPE_1__*,int *) ;

void lj_lex_next(LexState *ls)
{
  ls->lastline = ls->linenumber;
  if (LJ_LIKELY(ls->lookahead == TK_eof)) {
    ls->tok = lex_scan(ls, &ls->tokval);
  } else {
    ls->tok = ls->lookahead;
    ls->lookahead = TK_eof;
    ls->tokval = ls->lookaheadval;
  }
}
