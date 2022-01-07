
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int fs; } ;
typedef TYPE_1__ LexState ;
typedef int ExpDesc ;


 int expr (TYPE_1__*,int *) ;
 int expr_toval (int ,int *) ;
 int lex_check (TYPE_1__*,char) ;
 int lj_lex_next (TYPE_1__*) ;

__attribute__((used)) static void expr_bracket(LexState *ls, ExpDesc *v)
{
  lj_lex_next(ls);
  expr(ls, v);
  expr_toval(ls->fs, v);
  lex_check(ls, ']');
}
