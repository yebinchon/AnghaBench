#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_12__ {int width; int height; } ;
struct TYPE_11__ {int GRREFERENCEDX; int GRREFERENCEDY; TYPE_3__* GRREFERENCE; } ;
struct TYPE_10__ {int /*<<< orphan*/  number; } ;
typedef  TYPE_1__ Jbig2Segment ;
typedef  TYPE_2__ Jbig2RefinementRegionParams ;
typedef  TYPE_3__ Jbig2Image ;
typedef  int /*<<< orphan*/  Jbig2Ctx ;
typedef  int /*<<< orphan*/  Jbig2ArithState ;
typedef  int /*<<< orphan*/  Jbig2ArithCx ;

/* Variables and functions */
 int /*<<< orphan*/  JBIG2_SEVERITY_FATAL ; 
 int /*<<< orphan*/  JBIG2_SEVERITY_WARNING ; 
 int count ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (TYPE_3__*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int,int,int) ; 
 int FUNC4 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,int) ; 

__attribute__((used)) static int
FUNC6(Jbig2Ctx *ctx,
                                        Jbig2Segment *segment,
                                        const Jbig2RefinementRegionParams *params, Jbig2ArithState *as, Jbig2Image *image, Jbig2ArithCx *GR_stats)
{
    const int GRW = image->width;
    const int GRH = image->height;
    Jbig2Image *ref = params->GRREFERENCE;
    const int dx = params->GRREFERENCEDX;
    const int dy = params->GRREFERENCEDY;
    uint32_t CONTEXT;
    int x, y;
    bool bit;
    int code = 0;

    for (y = 0; y < GRH; y++) {
        for (x = 0; x < GRW; x++) {
            CONTEXT = 0;
            CONTEXT |= FUNC2(image, x - 1, y + 0) << 0;
            CONTEXT |= FUNC2(image, x + 1, y - 1) << 1;
            CONTEXT |= FUNC2(image, x + 0, y - 1) << 2;
            CONTEXT |= FUNC2(image, x - 1, y - 1) << 3;
            CONTEXT |= FUNC2(ref, x - dx + 1, y - dy + 1) << 4;
            CONTEXT |= FUNC2(ref, x - dx + 0, y - dy + 1) << 5;
            CONTEXT |= FUNC2(ref, x - dx + 1, y - dy + 0) << 6;
            CONTEXT |= FUNC2(ref, x - dx + 0, y - dy + 0) << 7;
            CONTEXT |= FUNC2(ref, x - dx - 1, y - dy + 0) << 8;
            CONTEXT |= FUNC2(ref, x - dx + 0, y - dy - 1) << 9;
            bit = FUNC0(as, &GR_stats[CONTEXT], &code);
            if (code)
                return FUNC1(ctx, JBIG2_SEVERITY_FATAL, segment->number, "failed to decode arithmetic code when handling refinement template0");
            FUNC3(image, x, y, bit);
        }
    }

#ifdef JBIG2_DEBUG_DUMP
    {
        static count = 0;
        char name[32];

        snprintf(name, 32, "refin-%d.pbm", count);
        code = jbig2_image_write_pbm_file(ref, name);
        if (code < 0)
            return jbig2_error(ctx, JBIG2_SEVERITY_WARNING, segment->number, "failed to write refinement input");
        snprintf(name, 32, "refout-%d.pbm", count);
        code = jbig2_image_write_pbm_file(image, name);
        if (code < 0)
            return jbig2_error(ctx, JBIG2_SEVERITY_WARNING, segment->number, "failed to write refinement output");
        count++;
    }
#endif

    return 0;
}