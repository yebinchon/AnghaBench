
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int allocator; } ;
struct TYPE_6__ {struct TYPE_6__* entries; } ;
typedef TYPE_1__ Jbig2HuffmanTable ;
typedef TYPE_2__ Jbig2Ctx ;


 int jbig2_free (int ,TYPE_1__*) ;

void
jbig2_release_huffman_table(Jbig2Ctx *ctx, Jbig2HuffmanTable *table)
{
    if (table != ((void*)0)) {
        jbig2_free(ctx->allocator, table->entries);
        jbig2_free(ctx->allocator, table);
    }
}
