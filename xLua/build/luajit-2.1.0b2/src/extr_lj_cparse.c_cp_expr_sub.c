
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CPValue ;
typedef int CPState ;


 int cp_expr_infix (int *,int *,int) ;
 int cp_expr_unary (int *,int *) ;

__attribute__((used)) static void cp_expr_sub(CPState *cp, CPValue *k, int pri)
{
  cp_expr_unary(cp, k);
  cp_expr_infix(cp, k, pri);
}
