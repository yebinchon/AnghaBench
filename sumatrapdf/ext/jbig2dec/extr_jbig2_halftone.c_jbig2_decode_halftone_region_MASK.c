#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_5__ ;
typedef  struct TYPE_27__   TYPE_4__ ;
typedef  struct TYPE_26__   TYPE_3__ ;
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int uint16_t ;
typedef  int int32_t ;
typedef  int /*<<< orphan*/  byte ;
struct TYPE_28__ {int /*<<< orphan*/  allocator; } ;
struct TYPE_27__ {int HENABLESKIP; int HGW; int HGH; int HGX; int HGY; int /*<<< orphan*/  HCOMBOP; scalar_t__ HRY; scalar_t__ HRX; int /*<<< orphan*/  HTEMPLATE; int /*<<< orphan*/  HMMR; int /*<<< orphan*/  HDEFPIXEL; } ;
struct TYPE_26__ {int stride; int height; scalar_t__ width; int /*<<< orphan*/  data; } ;
struct TYPE_25__ {scalar_t__ HPW; scalar_t__ HPH; int n_patterns; int /*<<< orphan*/ * patterns; } ;
struct TYPE_24__ {int /*<<< orphan*/  number; } ;
typedef  TYPE_1__ Jbig2Segment ;
typedef  TYPE_2__ Jbig2PatternDict ;
typedef  TYPE_3__ Jbig2Image ;
typedef  TYPE_4__ Jbig2HalftoneRegionParams ;
typedef  TYPE_5__ Jbig2Ctx ;
typedef  int /*<<< orphan*/  Jbig2ArithCx ;

/* Variables and functions */
 int /*<<< orphan*/  JBIG2_SEVERITY_FATAL ; 
 int /*<<< orphan*/  JBIG2_SEVERITY_WARNING ; 
 int** FUNC0 (TYPE_5__*,TYPE_1__*,int /*<<< orphan*/  const*,size_t const,int /*<<< orphan*/ ,int,int,int,int,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC1 (TYPE_5__*,TYPE_1__*) ; 
 int FUNC2 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,...) ; 
 int FUNC4 (TYPE_5__*,TYPE_3__*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC5 (TYPE_5__*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC9(Jbig2Ctx *ctx, Jbig2Segment *segment,
                             Jbig2HalftoneRegionParams *params, const byte *data, const size_t size, Jbig2Image *image, Jbig2ArithCx *GB_stats)
{
    uint32_t HBPP;
    uint32_t HNUMPATS;
    uint16_t **GI = NULL;
    Jbig2Image *HSKIP = NULL;
    Jbig2PatternDict *HPATS;
    uint32_t i;
    uint32_t mg, ng;
    int32_t x, y;
    uint16_t gray_val;
    int code = 0;

    /* We need the patterns used in this region, get them from the referred pattern dictionary */
    HPATS = FUNC1(ctx, segment);
    if (!HPATS) {
        code = FUNC2(ctx, JBIG2_SEVERITY_WARNING, segment->number, "no pattern dictionary found, skipping halftone image");
        goto cleanup;
    }

    /* 6.6.5 point 1. Fill bitmap with HDEFPIXEL */
    FUNC8(image->data, params->HDEFPIXEL, image->stride * image->height);

    /* 6.6.5 point 2. compute HSKIP according to 6.6.5.1 */
    if (params->HENABLESKIP == 1) {
        HSKIP = FUNC5(ctx, params->HGW, params->HGH);
        if (HSKIP == NULL)
            return FUNC2(ctx, JBIG2_SEVERITY_WARNING, segment->number, "failed to allocate skip image");

        for (mg = 0; mg < params->HGH; ++mg) {
            for (ng = 0; ng < params->HGW; ++ng) {
                x = (params->HGX + mg * (int32_t) params->HRY + ng * (int32_t) params->HRX) >> 8;
                y = (params->HGY + mg * (int32_t) params->HRX - ng * (int32_t) params->HRY) >> 8;

                if (x + HPATS->HPW <= 0 || x >= (int32_t) image->width || y + HPATS->HPH <= 0 || y >= (int32_t) image->height) {
                    FUNC7(HSKIP, ng, mg, 1);
                } else {
                    FUNC7(HSKIP, ng, mg, 0);
                }
            }
        }
    }

    /* 6.6.5 point 3. set HBPP to ceil(log2(HNUMPATS)): */
    HNUMPATS = HPATS->n_patterns;
    HBPP = 0;
    while (HNUMPATS > (1U << ++HBPP));
    if (HBPP > 16) {
        code = FUNC2(ctx, JBIG2_SEVERITY_FATAL, segment->number, "HBPP is larger than supported (%u)", HBPP);
        goto cleanup;
    }

    /* 6.6.5 point 4. decode gray-scale image as mentioned in annex C */
    GI = FUNC0(ctx, segment, data, size,
                                       params->HMMR, params->HGW, params->HGH, HBPP, params->HENABLESKIP, HSKIP, params->HTEMPLATE, GB_stats);
    if (!GI) {
        code = FUNC2(ctx, JBIG2_SEVERITY_WARNING, segment->number, "unable to acquire gray-scale image, skipping halftone image");
        goto cleanup;
    }

    /* 6.6.5 point 5. place patterns with procedure mentioned in 6.6.5.2 */
    for (mg = 0; mg < params->HGH; ++mg) {
        for (ng = 0; ng < params->HGW; ++ng) {
            x = (params->HGX + mg * (int32_t) params->HRY + ng * (int32_t) params->HRX) >> 8;
            y = (params->HGY + mg * (int32_t) params->HRX - ng * (int32_t) params->HRY) >> 8;

            /* prevent pattern index >= HNUMPATS */
            gray_val = GI[ng][mg];
            if (gray_val >= HNUMPATS) {
                FUNC2(ctx, JBIG2_SEVERITY_WARNING, segment->number, "gray-scale index %d out of range, using largest index", gray_val);
                /* use highest available pattern */
                gray_val = HNUMPATS - 1;
            }
            code = FUNC4(ctx, image, HPATS->patterns[gray_val], x, y, params->HCOMBOP);
            if (code < 0) {
                code = FUNC2(ctx, JBIG2_SEVERITY_WARNING, segment->number, "failed to compose pattern with gray-scale image");
                goto cleanup;
            }
        }
    }

cleanup:
    if (GI) {
        for (i = 0; i < params->HGW; ++i) {
            FUNC3(ctx->allocator, GI[i]);
        }
    }
    FUNC3(ctx->allocator, GI);
    FUNC6(ctx, HSKIP);

    return code;
}