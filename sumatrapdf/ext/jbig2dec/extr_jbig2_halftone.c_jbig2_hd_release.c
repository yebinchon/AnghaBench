
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int allocator; } ;
struct TYPE_8__ {int n_patterns; struct TYPE_8__* patterns; } ;
typedef TYPE_1__ Jbig2PatternDict ;
typedef TYPE_2__ Jbig2Ctx ;


 int jbig2_free (int ,TYPE_1__*) ;
 int jbig2_image_release (TYPE_2__*,TYPE_1__) ;

void
jbig2_hd_release(Jbig2Ctx *ctx, Jbig2PatternDict *dict)
{
    int i;

    if (dict == ((void*)0))
        return;
    if (dict->patterns != ((void*)0))
        for (i = 0; i < dict->n_patterns; i++)
            jbig2_image_release(ctx, dict->patterns[i]);
    jbig2_free(ctx->allocator, dict->patterns);
    jbig2_free(ctx->allocator, dict);
}
