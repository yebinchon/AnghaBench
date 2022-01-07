
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int statement_t ;
struct TYPE_3__ {int stat; int * case_clausules; int * expr; } ;
typedef TYPE_1__ select_statement_t ;
typedef int parser_ctx_t ;
typedef int expression_t ;
typedef int case_clausule_t ;


 int STAT_SELECT ;
 TYPE_1__* new_statement (int *,int ,int) ;

__attribute__((used)) static statement_t *new_select_statement(parser_ctx_t *ctx, expression_t *expr, case_clausule_t *case_clausules)
{
    select_statement_t *stat;

    stat = new_statement(ctx, STAT_SELECT, sizeof(*stat));
    if(!stat)
        return ((void*)0);

    stat->expr = expr;
    stat->case_clausules = case_clausules;
    return &stat->stat;
}
