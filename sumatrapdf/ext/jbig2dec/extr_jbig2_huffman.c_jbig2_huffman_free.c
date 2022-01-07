
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int allocator; } ;
typedef int Jbig2HuffmanState ;
typedef TYPE_1__ Jbig2Ctx ;


 int jbig2_free (int ,int *) ;

void
jbig2_huffman_free(Jbig2Ctx *ctx, Jbig2HuffmanState *hs)
{
    jbig2_free(ctx->allocator, hs);
}
