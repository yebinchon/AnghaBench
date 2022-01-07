
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ code; int labels; int parser; } ;
typedef TYPE_1__ compile_ctx_t ;


 int heap_free (int ) ;
 int parser_release (int *) ;
 int release_vbscode (scalar_t__) ;

__attribute__((used)) static void release_compiler(compile_ctx_t *ctx)
{
    parser_release(&ctx->parser);
    heap_free(ctx->labels);
    if(ctx->code)
        release_vbscode(ctx->code);
}
