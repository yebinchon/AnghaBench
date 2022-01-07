
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int referred_to_segment_count; int flags; scalar_t__ result; int * referred_to_segments; } ;
typedef TYPE_1__ Jbig2Segment ;
typedef int Jbig2PatternDict ;
typedef int Jbig2Ctx ;


 TYPE_1__* jbig2_find_segment (int *,int ) ;

__attribute__((used)) static Jbig2PatternDict *
jbig2_decode_ht_region_get_hpats(Jbig2Ctx *ctx, Jbig2Segment *segment)
{
    int index = 0;
    Jbig2PatternDict *pattern_dict = ((void*)0);
    Jbig2Segment *rsegment = ((void*)0);


    while (!pattern_dict && segment->referred_to_segment_count > index) {
        rsegment = jbig2_find_segment(ctx, segment->referred_to_segments[index]);
        if (rsegment) {

            if ((rsegment->flags & 0x3f) == 16 && rsegment->result) {
                pattern_dict = (Jbig2PatternDict *) rsegment->result;
                return pattern_dict;
            }
        }
        index++;
    }
    return pattern_dict;
}
