
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int heap; } ;
typedef TYPE_1__ parser_ctx_t ;


 int heap_pool_free (int *) ;

void parser_release(parser_ctx_t *ctx)
{
    heap_pool_free(&ctx->heap);
}
