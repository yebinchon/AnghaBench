
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * offsets; int * freqs; } ;
typedef TYPE_1__ FASTCOVER_ctx_t ;


 int free (int *) ;

__attribute__((used)) static void
FASTCOVER_ctx_destroy(FASTCOVER_ctx_t* ctx)
{
    if (!ctx) return;

    free(ctx->freqs);
    ctx->freqs = ((void*)0);

    free(ctx->offsets);
    ctx->offsets = ((void*)0);
}
