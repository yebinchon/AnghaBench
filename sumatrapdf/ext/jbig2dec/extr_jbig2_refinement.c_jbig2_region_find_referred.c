
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int referred_to_segment_count; int flags; int result; int * referred_to_segments; int number; } ;
typedef TYPE_1__ Jbig2Segment ;
typedef int Jbig2Ctx ;


 int JBIG2_SEVERITY_WARNING ;
 int jbig2_error (int *,int ,int ,char*,int ) ;
 TYPE_1__* jbig2_find_segment (int *,int ) ;

__attribute__((used)) static Jbig2Segment *
jbig2_region_find_referred(Jbig2Ctx *ctx, Jbig2Segment *segment)
{
    const int nsegments = segment->referred_to_segment_count;
    Jbig2Segment *rsegment;
    int index;

    for (index = 0; index < nsegments; index++) {
        rsegment = jbig2_find_segment(ctx, segment->referred_to_segments[index]);
        if (rsegment == ((void*)0)) {
            jbig2_error(ctx, JBIG2_SEVERITY_WARNING, segment->number, "failed to find referred to segment %d", segment->referred_to_segments[index]);
            continue;
        }
        switch (rsegment->flags & 63) {
        case 4:
        case 20:
        case 36:
        case 40:
            if (rsegment->result)
                return rsegment;
            break;
        default:
            break;
        }
    }

    return ((void*)0);
}
