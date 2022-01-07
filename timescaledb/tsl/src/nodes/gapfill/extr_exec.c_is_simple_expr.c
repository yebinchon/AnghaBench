
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Node ;
typedef int Expr ;


 int is_simple_expr_walker (int *,int *) ;

__attribute__((used)) static bool
is_simple_expr(Expr *node)
{





 return !is_simple_expr_walker((Node *) node, ((void*)0));
}
