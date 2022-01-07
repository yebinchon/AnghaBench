
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LexState ;
typedef int ExpDesc ;


 int expr_binop (int *,int *,int ) ;

__attribute__((used)) static void expr(LexState *ls, ExpDesc *v)
{
  expr_binop(ls, v, 0);
}
