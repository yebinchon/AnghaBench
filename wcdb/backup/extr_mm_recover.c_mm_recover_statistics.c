
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int succ_count; unsigned int fail_count; } ;
typedef TYPE_1__ mm_recover_ctx ;



void mm_recover_statistics(mm_recover_ctx *ctx,
                           unsigned int *succeed,
                           unsigned int *failed)
{
    if (succeed)
        *succeed = ctx->succ_count;
    if (failed)
        *failed = ctx->fail_count;
}
