
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int statement_t ;
typedef int parser_ctx_t ;
typedef int member_expression_t ;
typedef int expression_t ;
struct TYPE_3__ {int stat; int * value_expr; int * member_expr; } ;
typedef TYPE_1__ assign_statement_t ;


 int STAT_SET ;
 TYPE_1__* new_statement (int *,int ,int) ;

__attribute__((used)) static statement_t *new_set_statement(parser_ctx_t *ctx, member_expression_t *left, expression_t *right)
{
    assign_statement_t *stat;

    stat = new_statement(ctx, STAT_SET, sizeof(*stat));
    if(!stat)
        return ((void*)0);

    stat->member_expr = left;
    stat->value_expr = right;
    return &stat->stat;
}
