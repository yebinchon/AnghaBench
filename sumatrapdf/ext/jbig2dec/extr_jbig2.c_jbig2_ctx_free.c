
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int n_segments; int current_page; struct TYPE_7__* pages; int * image; struct TYPE_7__* segments; struct TYPE_7__* buf; int * allocator; } ;
typedef TYPE_1__ Jbig2Ctx ;
typedef int Jbig2Allocator ;


 int jbig2_free (int *,TYPE_1__*) ;
 int jbig2_free_segment (TYPE_1__*,TYPE_1__) ;
 int jbig2_image_release (TYPE_1__*,int *) ;

Jbig2Allocator *
jbig2_ctx_free(Jbig2Ctx *ctx)
{
    Jbig2Allocator *ca;
    int i;

    if (ctx == ((void*)0))
        return ((void*)0);

    ca = ctx->allocator;
    jbig2_free(ca, ctx->buf);
    if (ctx->segments != ((void*)0)) {
        for (i = 0; i < ctx->n_segments; i++)
            jbig2_free_segment(ctx, ctx->segments[i]);
        jbig2_free(ca, ctx->segments);
    }

    if (ctx->pages != ((void*)0)) {
        for (i = 0; i <= ctx->current_page; i++)
            if (ctx->pages[i].image != ((void*)0))
                jbig2_image_release(ctx, ctx->pages[i].image);
        jbig2_free(ca, ctx->pages);
    }

    jbig2_free(ca, ctx);

    return ca;
}
