
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int allocator; } ;
struct TYPE_10__ {int flags; int * result; struct TYPE_10__* referred_to_segments; } ;
typedef int Jbig2SymbolDict ;
typedef TYPE_1__ Jbig2Segment ;
typedef int Jbig2PatternDict ;
typedef int Jbig2Image ;
typedef int Jbig2HuffmanParams ;
typedef TYPE_2__ Jbig2Ctx ;


 int jbig2_free (int ,TYPE_1__*) ;
 int jbig2_hd_release (TYPE_2__*,int *) ;
 int jbig2_image_release (TYPE_2__*,int *) ;
 int jbig2_sd_release (TYPE_2__*,int *) ;
 int jbig2_table_free (TYPE_2__*,int *) ;

void
jbig2_free_segment(Jbig2Ctx *ctx, Jbig2Segment *segment)
{
    if (segment == ((void*)0))
        return;

    jbig2_free(ctx->allocator, segment->referred_to_segments);



    switch (segment->flags & 63) {
    case 0:
        if (segment->result != ((void*)0))
            jbig2_sd_release(ctx, (Jbig2SymbolDict *) segment->result);
        break;
    case 4:
    case 40:
        if (segment->result != ((void*)0))
            jbig2_image_release(ctx, (Jbig2Image *) segment->result);
        break;
    case 16:
        if (segment->result != ((void*)0))
            jbig2_hd_release(ctx, (Jbig2PatternDict *) segment->result);
        break;
    case 53:
        if (segment->result != ((void*)0))
            jbig2_table_free(ctx, (Jbig2HuffmanParams *) segment->result);
        break;
    default:

        break;
    }
    jbig2_free(ctx->allocator, segment);
}
