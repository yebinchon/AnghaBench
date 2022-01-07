
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {char tok; int fs; } ;
typedef TYPE_1__ LexState ;
typedef int ExpDesc ;
typedef int BCOp ;


 int BC_LEN ;
 int BC_NOT ;
 int BC_UNM ;
 char TK_not ;
 int UNARY_PRIORITY ;
 int bcemit_unop (int ,int ,int *) ;
 int expr_binop (TYPE_1__*,int *,int ) ;
 int expr_simple (TYPE_1__*,int *) ;
 int lj_lex_next (TYPE_1__*) ;

__attribute__((used)) static void expr_unop(LexState *ls, ExpDesc *v)
{
  BCOp op;
  if (ls->tok == TK_not) {
    op = BC_NOT;
  } else if (ls->tok == '-') {
    op = BC_UNM;
  } else if (ls->tok == '#') {
    op = BC_LEN;
  } else {
    expr_simple(ls, v);
    return;
  }
  lj_lex_next(ls);
  expr_binop(ls, v, UNARY_PRIORITY);
  bcemit_unop(ls->fs, op, v);
}
