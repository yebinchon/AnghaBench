
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_5__ ;
typedef struct TYPE_27__ TYPE_4__ ;
typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
typedef int int32_t ;
typedef int byte ;
struct TYPE_28__ {int allocator; } ;
struct TYPE_27__ {int HENABLESKIP; int HGW; int HGH; int HGX; int HGY; int HCOMBOP; scalar_t__ HRY; scalar_t__ HRX; int HTEMPLATE; int HMMR; int HDEFPIXEL; } ;
struct TYPE_26__ {int stride; int height; scalar_t__ width; int data; } ;
struct TYPE_25__ {scalar_t__ HPW; scalar_t__ HPH; int n_patterns; int * patterns; } ;
struct TYPE_24__ {int number; } ;
typedef TYPE_1__ Jbig2Segment ;
typedef TYPE_2__ Jbig2PatternDict ;
typedef TYPE_3__ Jbig2Image ;
typedef TYPE_4__ Jbig2HalftoneRegionParams ;
typedef TYPE_5__ Jbig2Ctx ;
typedef int Jbig2ArithCx ;


 int JBIG2_SEVERITY_FATAL ;
 int JBIG2_SEVERITY_WARNING ;
 int** jbig2_decode_gray_scale_image (TYPE_5__*,TYPE_1__*,int const*,size_t const,int ,int,int,int,int,TYPE_3__*,int ,int *) ;
 TYPE_2__* jbig2_decode_ht_region_get_hpats (TYPE_5__*,TYPE_1__*) ;
 int jbig2_error (TYPE_5__*,int ,int ,char*,...) ;
 int jbig2_free (int ,...) ;
 int jbig2_image_compose (TYPE_5__*,TYPE_3__*,int ,int,int,int ) ;
 TYPE_3__* jbig2_image_new (TYPE_5__*,int,int) ;
 int jbig2_image_release (TYPE_5__*,TYPE_3__*) ;
 int jbig2_image_set_pixel (TYPE_3__*,int,int,int) ;
 int memset (int ,int ,int) ;

__attribute__((used)) static int
jbig2_decode_halftone_region(Jbig2Ctx *ctx, Jbig2Segment *segment,
                             Jbig2HalftoneRegionParams *params, const byte *data, const size_t size, Jbig2Image *image, Jbig2ArithCx *GB_stats)
{
    uint32_t HBPP;
    uint32_t HNUMPATS;
    uint16_t **GI = ((void*)0);
    Jbig2Image *HSKIP = ((void*)0);
    Jbig2PatternDict *HPATS;
    uint32_t i;
    uint32_t mg, ng;
    int32_t x, y;
    uint16_t gray_val;
    int code = 0;


    HPATS = jbig2_decode_ht_region_get_hpats(ctx, segment);
    if (!HPATS) {
        code = jbig2_error(ctx, JBIG2_SEVERITY_WARNING, segment->number, "no pattern dictionary found, skipping halftone image");
        goto cleanup;
    }


    memset(image->data, params->HDEFPIXEL, image->stride * image->height);


    if (params->HENABLESKIP == 1) {
        HSKIP = jbig2_image_new(ctx, params->HGW, params->HGH);
        if (HSKIP == ((void*)0))
            return jbig2_error(ctx, JBIG2_SEVERITY_WARNING, segment->number, "failed to allocate skip image");

        for (mg = 0; mg < params->HGH; ++mg) {
            for (ng = 0; ng < params->HGW; ++ng) {
                x = (params->HGX + mg * (int32_t) params->HRY + ng * (int32_t) params->HRX) >> 8;
                y = (params->HGY + mg * (int32_t) params->HRX - ng * (int32_t) params->HRY) >> 8;

                if (x + HPATS->HPW <= 0 || x >= (int32_t) image->width || y + HPATS->HPH <= 0 || y >= (int32_t) image->height) {
                    jbig2_image_set_pixel(HSKIP, ng, mg, 1);
                } else {
                    jbig2_image_set_pixel(HSKIP, ng, mg, 0);
                }
            }
        }
    }


    HNUMPATS = HPATS->n_patterns;
    HBPP = 0;
    while (HNUMPATS > (1U << ++HBPP));
    if (HBPP > 16) {
        code = jbig2_error(ctx, JBIG2_SEVERITY_FATAL, segment->number, "HBPP is larger than supported (%u)", HBPP);
        goto cleanup;
    }


    GI = jbig2_decode_gray_scale_image(ctx, segment, data, size,
                                       params->HMMR, params->HGW, params->HGH, HBPP, params->HENABLESKIP, HSKIP, params->HTEMPLATE, GB_stats);
    if (!GI) {
        code = jbig2_error(ctx, JBIG2_SEVERITY_WARNING, segment->number, "unable to acquire gray-scale image, skipping halftone image");
        goto cleanup;
    }


    for (mg = 0; mg < params->HGH; ++mg) {
        for (ng = 0; ng < params->HGW; ++ng) {
            x = (params->HGX + mg * (int32_t) params->HRY + ng * (int32_t) params->HRX) >> 8;
            y = (params->HGY + mg * (int32_t) params->HRX - ng * (int32_t) params->HRY) >> 8;


            gray_val = GI[ng][mg];
            if (gray_val >= HNUMPATS) {
                jbig2_error(ctx, JBIG2_SEVERITY_WARNING, segment->number, "gray-scale index %d out of range, using largest index", gray_val);

                gray_val = HNUMPATS - 1;
            }
            code = jbig2_image_compose(ctx, image, HPATS->patterns[gray_val], x, y, params->HCOMBOP);
            if (code < 0) {
                code = jbig2_error(ctx, JBIG2_SEVERITY_WARNING, segment->number, "failed to compose pattern with gray-scale image");
                goto cleanup;
            }
        }
    }

cleanup:
    if (GI) {
        for (i = 0; i < params->HGW; ++i) {
            jbig2_free(ctx->allocator, GI[i]);
        }
    }
    jbig2_free(ctx->allocator, GI);
    jbig2_image_release(ctx, HSKIP);

    return code;
}
