
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int expr; int const* value; } ;
typedef TYPE_1__ string_expression_t ;
typedef int parser_ctx_t ;
typedef int expression_t ;
typedef int WCHAR ;


 int EXPR_NEW ;
 TYPE_1__* new_expression (int *,int ,int) ;

__attribute__((used)) static expression_t *new_new_expression(parser_ctx_t *ctx, const WCHAR *identifier)
{
    string_expression_t *expr;

    expr = new_expression(ctx, EXPR_NEW, sizeof(*expr));
    if(!expr)
        return ((void*)0);

    expr->value = identifier;
    return &expr->expr;
}
