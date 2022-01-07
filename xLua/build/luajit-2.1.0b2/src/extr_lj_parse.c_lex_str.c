
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ tok; int tokval; } ;
typedef TYPE_1__ LexState ;
typedef int GCstr ;


 scalar_t__ LJ_52 ;
 scalar_t__ TK_goto ;
 scalar_t__ TK_name ;
 int err_token (TYPE_1__*,scalar_t__) ;
 int lj_lex_next (TYPE_1__*) ;
 int * strV (int *) ;

__attribute__((used)) static GCstr *lex_str(LexState *ls)
{
  GCstr *s;
  if (ls->tok != TK_name && (LJ_52 || ls->tok != TK_goto))
    err_token(ls, TK_name);
  s = strV(&ls->tokval);
  lj_lex_next(ls);
  return s;
}
