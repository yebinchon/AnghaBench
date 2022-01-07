
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_9__ {int allocator; } ;
struct TYPE_8__ {size_t n_symbols; struct TYPE_8__* glyphs; } ;
typedef TYPE_1__ Jbig2SymbolDict ;
typedef TYPE_2__ Jbig2Ctx ;


 int jbig2_free (int ,TYPE_1__*) ;
 int jbig2_image_release (TYPE_2__*,TYPE_1__) ;

void
jbig2_sd_release(Jbig2Ctx *ctx, Jbig2SymbolDict *dict)
{
    uint32_t i;

    if (dict == ((void*)0))
        return;
    if (dict->glyphs != ((void*)0))
        for (i = 0; i < dict->n_symbols; i++)
            jbig2_image_release(ctx, dict->glyphs[i]);
    jbig2_free(ctx->allocator, dict->glyphs);
    jbig2_free(ctx->allocator, dict);
}
