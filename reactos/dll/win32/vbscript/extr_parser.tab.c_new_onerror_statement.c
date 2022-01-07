
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int statement_t ;
typedef int parser_ctx_t ;
struct TYPE_3__ {int stat; int resume_next; } ;
typedef TYPE_1__ onerror_statement_t ;
typedef int BOOL ;


 int STAT_ONERROR ;
 TYPE_1__* new_statement (int *,int ,int) ;

__attribute__((used)) static statement_t *new_onerror_statement(parser_ctx_t *ctx, BOOL resume_next)
{
    onerror_statement_t *stat;

    stat = new_statement(ctx, STAT_ONERROR, sizeof(*stat));
    if(!stat)
        return ((void*)0);

    stat->resume_next = resume_next;
    return &stat->stat;
}
