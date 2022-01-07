
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;


typedef int int8_t ;
typedef int byte ;
struct TYPE_25__ {int allocator; } ;
struct TYPE_24__ {int* gbat; scalar_t__ USESKIP; scalar_t__ TPGDON; int GBTEMPLATE; scalar_t__ MMR; } ;
struct TYPE_23__ {int HDPW; int GRAYMAX; scalar_t__ HDMMR; int HDTEMPLATE; int HDPH; } ;
struct TYPE_22__ {int number; } ;
typedef int Jbig2WordStream ;
typedef TYPE_1__ Jbig2Segment ;
typedef TYPE_2__ Jbig2PatternDictParams ;
typedef int Jbig2PatternDict ;
typedef int Jbig2Image ;
typedef TYPE_3__ Jbig2GenericRegionParams ;
typedef TYPE_4__ Jbig2Ctx ;
typedef int Jbig2ArithState ;
typedef int Jbig2ArithCx ;


 int JBIG2_SEVERITY_WARNING ;
 int * jbig2_arith_new (TYPE_4__*,int *) ;
 int jbig2_decode_generic_mmr (TYPE_4__*,TYPE_1__*,TYPE_3__*,int const*,size_t const,int *) ;
 int jbig2_decode_generic_region (TYPE_4__*,TYPE_1__*,TYPE_3__*,int *,int *,int *) ;
 int jbig2_error (TYPE_4__*,int ,int ,char*) ;
 int jbig2_free (int ,int *) ;
 int * jbig2_hd_new (TYPE_4__*,TYPE_2__ const*,int *) ;
 int * jbig2_image_new (TYPE_4__*,int,int ) ;
 int jbig2_image_release (TYPE_4__*,int *) ;
 int jbig2_word_stream_buf_free (TYPE_4__*,int *) ;
 int * jbig2_word_stream_buf_new (TYPE_4__*,int const*,size_t const) ;

__attribute__((used)) static Jbig2PatternDict *
jbig2_decode_pattern_dict(Jbig2Ctx *ctx, Jbig2Segment *segment,
                          const Jbig2PatternDictParams *params, const byte *data, const size_t size, Jbig2ArithCx *GB_stats)
{
    Jbig2PatternDict *hd = ((void*)0);
    Jbig2Image *image = ((void*)0);
    Jbig2GenericRegionParams rparams;
    int code = 0;


    image = jbig2_image_new(ctx, params->HDPW * (params->GRAYMAX + 1), params->HDPH);
    if (image == ((void*)0)) {
        jbig2_error(ctx, JBIG2_SEVERITY_WARNING, segment->number, "failed to allocate collective bitmap for halftone dictionary");
        return ((void*)0);
    }


    rparams.MMR = params->HDMMR;
    rparams.GBTEMPLATE = params->HDTEMPLATE;
    rparams.TPGDON = 0;
    rparams.USESKIP = 0;
    rparams.gbat[0] = -(int8_t) params->HDPW;
    rparams.gbat[1] = 0;
    rparams.gbat[2] = -3;
    rparams.gbat[3] = -1;
    rparams.gbat[4] = 2;
    rparams.gbat[5] = -2;
    rparams.gbat[6] = -2;
    rparams.gbat[7] = -2;

    if (params->HDMMR) {
        code = jbig2_decode_generic_mmr(ctx, segment, &rparams, data, size, image);
    } else {
        Jbig2WordStream *ws = jbig2_word_stream_buf_new(ctx, data, size);

        if (ws != ((void*)0)) {
            Jbig2ArithState *as = jbig2_arith_new(ctx, ws);

            if (as != ((void*)0)) {
                code = jbig2_decode_generic_region(ctx, segment, &rparams, as, image, GB_stats);
            } else {
                code = jbig2_error(ctx, JBIG2_SEVERITY_WARNING, segment->number, "failed to allocate arithmetic coding state when handling halftone dictionary");
            }

            jbig2_free(ctx->allocator, as);
            jbig2_word_stream_buf_free(ctx, ws);
        } else {
            code = jbig2_error(ctx, JBIG2_SEVERITY_WARNING, segment->number, "failed to allocate word stream when handling halftone dictionary");
        }
    }

    if (code == 0)
        hd = jbig2_hd_new(ctx, params, image);
    else
        jbig2_error(ctx, JBIG2_SEVERITY_WARNING, segment->number, "failed to decode immediate generic region");
    jbig2_image_release(ctx, image);

    return hd;
}
