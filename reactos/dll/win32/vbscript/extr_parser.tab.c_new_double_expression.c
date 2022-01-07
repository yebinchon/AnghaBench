
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int parser_ctx_t ;
typedef int expression_t ;
struct TYPE_3__ {double value; int expr; } ;
typedef TYPE_1__ double_expression_t ;


 int EXPR_DOUBLE ;
 TYPE_1__* new_expression (int *,int ,int) ;

__attribute__((used)) static expression_t *new_double_expression(parser_ctx_t *ctx, double value)
{
    double_expression_t *expr;

    expr = new_expression(ctx, EXPR_DOUBLE, sizeof(*expr));
    if(!expr)
        return ((void*)0);

    expr->value = value;
    return &expr->expr;
}
