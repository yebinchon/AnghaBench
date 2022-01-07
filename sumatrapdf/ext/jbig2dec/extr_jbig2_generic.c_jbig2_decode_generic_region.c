
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_36__ TYPE_3__ ;
typedef struct TYPE_35__ TYPE_2__ ;
typedef struct TYPE_34__ TYPE_1__ ;


typedef int int8_t ;
struct TYPE_36__ {int* gbat; int MMR; int GBTEMPLATE; int USESKIP; scalar_t__ TPGDON; } ;
struct TYPE_35__ {int stride; int height; } ;
struct TYPE_34__ {int data_length; int number; } ;
typedef TYPE_1__ Jbig2Segment ;
typedef TYPE_2__ Jbig2Image ;
typedef TYPE_3__ Jbig2GenericRegionParams ;
typedef int Jbig2Ctx ;
typedef int Jbig2ArithState ;
typedef int Jbig2ArithCx ;


 int JBIG2_SEVERITY_DEBUG ;
 int JBIG2_SEVERITY_FATAL ;
 int jbig2_decode_generic_region_TPGDON (int *,TYPE_1__*,TYPE_3__ const*,int *,TYPE_2__*,int *) ;
 int jbig2_decode_generic_template0 (int *,TYPE_1__*,TYPE_3__ const*,int *,TYPE_2__*,int *) ;
 int jbig2_decode_generic_template0_unopt (int *,TYPE_1__*,TYPE_3__ const*,int *,TYPE_2__*,int *) ;
 int jbig2_decode_generic_template1 (int *,TYPE_1__*,TYPE_3__ const*,int *,TYPE_2__*,int *) ;
 int jbig2_decode_generic_template1_unopt (int *,TYPE_1__*,TYPE_3__ const*,int *,TYPE_2__*,int *) ;
 int jbig2_decode_generic_template2 (int *,TYPE_1__*,TYPE_3__ const*,int *,TYPE_2__*,int *) ;
 int jbig2_decode_generic_template2_unopt (int *,TYPE_1__*,TYPE_3__ const*,int *,TYPE_2__*,int *) ;
 int jbig2_decode_generic_template3 (int *,TYPE_1__*,TYPE_3__ const*,int *,TYPE_2__*,int *) ;
 int jbig2_decode_generic_template3_unopt (int *,TYPE_1__*,TYPE_3__ const*,int *,TYPE_2__*,int *) ;
 int jbig2_error (int *,int ,int ,char*,int,int) ;

int
jbig2_decode_generic_region(Jbig2Ctx *ctx,
                            Jbig2Segment *segment, const Jbig2GenericRegionParams *params, Jbig2ArithState *as, Jbig2Image *image, Jbig2ArithCx *GB_stats)
{
    const int8_t *gbat = params->gbat;

    if (image->stride * image->height > (1 << 26) && segment->data_length < image->stride * image->height / (1 << 16)) {
        return jbig2_error(ctx, JBIG2_SEVERITY_FATAL, segment->number,
                           "region is far larger than data provided (%d << %d), aborting to prevent DOS", segment->data_length, image->stride * image->height);
    }

    if (!params->MMR && params->TPGDON)
        return jbig2_decode_generic_region_TPGDON(ctx, segment, params, as, image, GB_stats);

    if (!params->MMR && params->GBTEMPLATE == 0) {
        if (!params->USESKIP && gbat[0] == +3 && gbat[1] == -1 && gbat[2] == -3 && gbat[3] == -1 && gbat[4] == +2 && gbat[5] == -2 && gbat[6] == -2 && gbat[7] == -2)
            return jbig2_decode_generic_template0(ctx, segment, params, as, image, GB_stats);
        else
            return jbig2_decode_generic_template0_unopt(ctx, segment, params, as, image, GB_stats);
    } else if (!params->MMR && params->GBTEMPLATE == 1) {
        if (!params->USESKIP && gbat[0] == +3 && gbat[1] == -1)
            return jbig2_decode_generic_template1(ctx, segment, params, as, image, GB_stats);
        else
            return jbig2_decode_generic_template1_unopt(ctx, segment, params, as, image, GB_stats);
    }
    else if (!params->MMR && params->GBTEMPLATE == 2) {
        if (!params->USESKIP && gbat[0] == 2 && gbat[1] == -1)
            return jbig2_decode_generic_template2(ctx, segment, params, as, image, GB_stats);
        else
            return jbig2_decode_generic_template2_unopt(ctx, segment, params, as, image, GB_stats);
    } else if (!params->MMR && params->GBTEMPLATE == 3) {
        if (!params->USESKIP && gbat[0] == 2 && gbat[1] == -1)
            return jbig2_decode_generic_template3(ctx, segment, params, as, image, GB_stats);
        else
            return jbig2_decode_generic_template3_unopt(ctx, segment, params, as, image, GB_stats);
    }

    {
        int i;

        for (i = 0; i < 8; i++)
            jbig2_error(ctx, JBIG2_SEVERITY_DEBUG, segment->number, "gbat[%d] = %d", i, params->gbat[i]);
    }

    return jbig2_error(ctx, JBIG2_SEVERITY_FATAL, segment->number, "unsupported generic region (MMR=%d, GBTEMPLATE=%d)", params->MMR, params->GBTEMPLATE);
}
