
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ stack_use; struct TYPE_4__* next; } ;
typedef TYPE_1__ statement_ctx_t ;
struct TYPE_5__ {TYPE_1__* stat_ctx; } ;
typedef TYPE_2__ compile_ctx_t ;



__attribute__((used)) static inline unsigned stack_offset(compile_ctx_t *ctx)
{
    statement_ctx_t *iter;
    unsigned ret = 0;

    for(iter = ctx->stat_ctx; iter; iter = iter->next)
        ret += iter->stack_use;

    return ret;
}
