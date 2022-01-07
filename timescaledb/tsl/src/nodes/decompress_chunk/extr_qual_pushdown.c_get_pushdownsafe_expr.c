
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int test_context ;
struct TYPE_6__ {int can_pushdown; } ;
typedef TYPE_1__ QualPushdownContext ;
typedef int Node ;
typedef int Expr ;


 int memcpy (TYPE_1__*,TYPE_1__ const*,int) ;
 scalar_t__ modify_expression (int *,TYPE_1__*) ;

__attribute__((used)) static Expr *
get_pushdownsafe_expr(const QualPushdownContext *input_context, Expr *input)
{

 QualPushdownContext test_context;
 Expr *expr;

 memcpy(&test_context, input_context, sizeof(test_context));
 test_context.can_pushdown = 1;
 expr = (Expr *) modify_expression((Node *) input, &test_context);
 if (test_context.can_pushdown)
  return expr;
 return ((void*)0);
}
