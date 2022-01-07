
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int statement_t ;
typedef int parser_ctx_t ;
typedef int expression_t ;
struct TYPE_5__ {struct TYPE_5__* next; int * stat; int * expr; } ;
typedef TYPE_1__ case_clausule_t ;


 TYPE_1__* parser_alloc (int *,int) ;

__attribute__((used)) static case_clausule_t *new_case_clausule(parser_ctx_t *ctx, expression_t *expr, statement_t *stat, case_clausule_t *next)
{
    case_clausule_t *ret;

    ret = parser_alloc(ctx, sizeof(*ret));
    if(!ret)
        return ((void*)0);

    ret->expr = expr;
    ret->stat = stat;
    ret->next = next;
    return ret;
}
