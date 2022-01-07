
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int statement_t ;
typedef int parser_ctx_t ;
typedef int member_expression_t ;
struct TYPE_3__ {int stat; int is_strict; int * expr; } ;
typedef TYPE_1__ call_statement_t ;
typedef int BOOL ;


 int STAT_CALL ;
 TYPE_1__* new_statement (int *,int ,int) ;

__attribute__((used)) static statement_t *new_call_statement(parser_ctx_t *ctx, BOOL is_strict, member_expression_t *expr)
{
    call_statement_t *stat;

    stat = new_statement(ctx, STAT_CALL, sizeof(*stat));
    if(!stat)
        return ((void*)0);

    stat->expr = expr;
    stat->is_strict = is_strict;
    return &stat->stat;
}
