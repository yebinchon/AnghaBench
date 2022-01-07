
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ GRTEMPLATE; scalar_t__ TPGRON; int GRREFERENCEDY; int GRREFERENCEDX; } ;
struct TYPE_10__ {int number; } ;
typedef TYPE_1__ Jbig2Segment ;
typedef TYPE_2__ Jbig2RefinementRegionParams ;
typedef int Jbig2Image ;
typedef int Jbig2Ctx ;
typedef int Jbig2ArithState ;
typedef int Jbig2ArithCx ;


 int JBIG2_SEVERITY_DEBUG ;
 int jbig2_decode_refinement_TPGRON (int *,TYPE_2__ const*,int *,int *,int *) ;
 int jbig2_decode_refinement_template0_unopt (int *,TYPE_1__*,TYPE_2__ const*,int *,int *,int *) ;
 int jbig2_decode_refinement_template1_unopt (int *,TYPE_1__*,TYPE_2__ const*,int *,int *,int *) ;
 int jbig2_error (int *,int ,int ,char*,int ,int ,scalar_t__,scalar_t__) ;

int
jbig2_decode_refinement_region(Jbig2Ctx *ctx,
                               Jbig2Segment *segment,
                               const Jbig2RefinementRegionParams *params, Jbig2ArithState *as, Jbig2Image *image, Jbig2ArithCx *GR_stats)
{
    jbig2_error(ctx, JBIG2_SEVERITY_DEBUG, segment->number,
                "decoding generic refinement region with offset %d,%x, GRTEMPLATE=%d, TPGRON=%d",
                params->GRREFERENCEDX, params->GRREFERENCEDY, params->GRTEMPLATE, params->TPGRON);

    if (params->TPGRON)
        return jbig2_decode_refinement_TPGRON(ctx, params, as, image, GR_stats);

    if (params->GRTEMPLATE)
        return jbig2_decode_refinement_template1_unopt(ctx, segment, params, as, image, GR_stats);
    else
        return jbig2_decode_refinement_template0_unopt(ctx, segment, params, as, image, GR_stats);
}
