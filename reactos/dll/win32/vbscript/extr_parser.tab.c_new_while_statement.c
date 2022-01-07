
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int stat; int * body; int * expr; } ;
typedef TYPE_1__ while_statement_t ;
typedef int statement_type_t ;
typedef int statement_t ;
typedef int parser_ctx_t ;
typedef int expression_t ;


 TYPE_1__* new_statement (int *,int ,int) ;

__attribute__((used)) static statement_t *new_while_statement(parser_ctx_t *ctx, statement_type_t type, expression_t *expr, statement_t *body)
{
    while_statement_t *stat;

    stat = new_statement(ctx, type, sizeof(*stat));
    if(!stat)
        return ((void*)0);

    stat->expr = expr;
    stat->body = body;
    return &stat->stat;
}
