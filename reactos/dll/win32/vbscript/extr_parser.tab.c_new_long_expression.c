
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int parser_ctx_t ;
struct TYPE_3__ {int expr; int value; } ;
typedef TYPE_1__ int_expression_t ;
typedef int expression_type_t ;
typedef int expression_t ;
typedef int LONG ;


 TYPE_1__* new_expression (int *,int ,int) ;

__attribute__((used)) static expression_t *new_long_expression(parser_ctx_t *ctx, expression_type_t type, LONG value)
{
    int_expression_t *expr;

    expr = new_expression(ctx, type, sizeof(*expr));
    if(!expr)
        return ((void*)0);

    expr->value = value;
    return &expr->expr;
}
