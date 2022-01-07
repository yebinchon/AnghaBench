
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_6__ {int referred_to_segment_count; int flags; scalar_t__ result; int * referred_to_segments; } ;
struct TYPE_5__ {scalar_t__ n_symbols; int ** glyphs; } ;
typedef TYPE_1__ Jbig2SymbolDict ;
typedef TYPE_2__ Jbig2Segment ;
typedef int Jbig2Ctx ;


 TYPE_2__* jbig2_find_segment (int *,int ) ;

uint32_t
jbig2_sd_count_referred(Jbig2Ctx *ctx, Jbig2Segment *segment)
{
    int index;
    Jbig2Segment *rsegment;
    uint32_t n_dicts = 0;

    for (index = 0; index < segment->referred_to_segment_count; index++) {
        rsegment = jbig2_find_segment(ctx, segment->referred_to_segments[index]);
        if (rsegment && ((rsegment->flags & 63) == 0) &&
            rsegment->result && (((Jbig2SymbolDict *) rsegment->result)->n_symbols > 0) && ((*((Jbig2SymbolDict *) rsegment->result)->glyphs) != ((void*)0)))
            n_dicts++;
    }

    return (n_dicts);
}
