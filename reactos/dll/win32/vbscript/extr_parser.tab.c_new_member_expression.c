
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int parser_ctx_t ;
struct TYPE_4__ {int * args; int const* identifier; int * obj_expr; } ;
typedef TYPE_1__ member_expression_t ;
typedef int expression_t ;
typedef int WCHAR ;


 int EXPR_MEMBER ;
 TYPE_1__* new_expression (int *,int ,int) ;

__attribute__((used)) static member_expression_t *new_member_expression(parser_ctx_t *ctx, expression_t *obj_expr, const WCHAR *identifier)
{
    member_expression_t *expr;

    expr = new_expression(ctx, EXPR_MEMBER, sizeof(*expr));
    if(!expr)
        return ((void*)0);

    expr->obj_expr = obj_expr;
    expr->identifier = identifier;
    expr->args = ((void*)0);
    return expr;
}
