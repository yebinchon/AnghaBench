
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ExprState ;
typedef int Expr ;


 int * ExecInitExpr (int *,int *) ;
 int * expression_planner (int *) ;

__attribute__((used)) static inline ExprState *
prepare_constr_expr(Expr *node)
{
 ExprState *result;

 node = expression_planner(node);
 result = ExecInitExpr(node, ((void*)0));

 return result;
}
