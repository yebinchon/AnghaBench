
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ c; scalar_t__ linenumber; int tok; } ;
typedef TYPE_1__ LexState ;
typedef scalar_t__ LexChar ;


 int LJ_ERR_XLINES ;
 scalar_t__ LJ_MAX_LINE ;
 scalar_t__ lex_iseol (TYPE_1__*) ;
 int lex_next (TYPE_1__*) ;
 int lj_lex_error (TYPE_1__*,int ,int ) ;
 int lua_assert (scalar_t__) ;

__attribute__((used)) static void lex_newline(LexState *ls)
{
  LexChar old = ls->c;
  lua_assert(lex_iseol(ls));
  lex_next(ls);
  if (lex_iseol(ls) && ls->c != old) lex_next(ls);
  if (++ls->linenumber >= LJ_MAX_LINE)
    lj_lex_error(ls, ls->tok, LJ_ERR_XLINES);
}
