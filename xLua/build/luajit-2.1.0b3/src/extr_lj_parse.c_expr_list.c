
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int fs; } ;
typedef TYPE_1__ LexState ;
typedef int ExpDesc ;
typedef int BCReg ;


 int expr (TYPE_1__*,int *) ;
 int expr_tonextreg (int ,int *) ;
 scalar_t__ lex_opt (TYPE_1__*,char) ;

__attribute__((used)) static BCReg expr_list(LexState *ls, ExpDesc *v)
{
  BCReg n = 1;
  expr(ls, v);
  while (lex_opt(ls, ',')) {
    expr_tonextreg(ls->fs, v);
    expr(ls, v);
    n++;
  }
  return n;
}
