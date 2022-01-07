
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int parser_ctx_t ;
typedef int expression_type_t ;
typedef int expression_t ;
struct TYPE_3__ {int expr; int * right; int * left; } ;
typedef TYPE_1__ binary_expression_t ;


 TYPE_1__* new_expression (int *,int ,int) ;

__attribute__((used)) static expression_t *new_binary_expression(parser_ctx_t *ctx, expression_type_t type, expression_t *left, expression_t *right)
{
    binary_expression_t *expr;

    expr = new_expression(ctx, type, sizeof(*expr));
    if(!expr)
        return ((void*)0);

    expr->left = left;
    expr->right = right;
    return &expr->expr;
}
