#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int byte ;
struct TYPE_6__ {int width; int height; int stride; scalar_t__ data; } ;
struct TYPE_5__ {int /*<<< orphan*/  number; } ;
typedef  TYPE_1__ Jbig2Segment ;
typedef  TYPE_2__ Jbig2Image ;
typedef  int /*<<< orphan*/  Jbig2GenericRegionParams ;
typedef  int /*<<< orphan*/  Jbig2Ctx ;
typedef  int /*<<< orphan*/  Jbig2ArithState ;
typedef  int /*<<< orphan*/  Jbig2ArithCx ;

/* Variables and functions */
 int /*<<< orphan*/  JBIG2_SEVERITY_FATAL ; 
 int /*<<< orphan*/  FUNC0 (int*,int,int const,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int const,int const) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static int
FUNC4(Jbig2Ctx *ctx,
                                Jbig2Segment *segment,
                                const Jbig2GenericRegionParams *params, Jbig2ArithState *as, Jbig2Image *image, Jbig2ArithCx *GB_stats)
{
    const uint32_t GBW = image->width;
    const uint32_t GBH = image->height;
    const uint32_t rowstride = image->stride;
    uint32_t x, y;
    byte *line2 = NULL;
    byte *line1 = NULL;
    byte *gbreg_line = (byte *) image->data;
    int code = 0;

#ifdef OUTPUT_PBM
    printf("P4\n%d %d\n", GBW, GBH);
#endif

    if (GBW <= 0)
        return 0;

    for (y = 0; y < GBH; y++) {
        uint32_t CONTEXT;
        uint32_t line_m1;
        uint32_t line_m2;
        uint32_t padded_width = (GBW + 7) & -8;

        line_m1 = line1 ? line1[0] : 0;
        line_m2 = line2 ? line2[0] << 4 : 0;
        CONTEXT = ((line_m1 >> 3) & 0x7c) | ((line_m2 >> 3) & 0x380);

        /* 6.2.5.7 3d */
        for (x = 0; x < padded_width; x += 8) {
            byte result = 0;
            int x_minor;
            int minor_width = GBW - x > 8 ? 8 : GBW - x;

            if (line1)
                line_m1 = (line_m1 << 8) | (x + 8 < GBW ? line1[(x >> 3) + 1] : 0);

            if (line2)
                line_m2 = (line_m2 << 8) | (x + 8 < GBW ? line2[(x >> 3) + 1] << 4 : 0);

            /* This is the speed-critical inner loop. */
            for (x_minor = 0; x_minor < minor_width; x_minor++) {
                bool bit;

                bit = FUNC1(as, &GB_stats[CONTEXT], &code);
                if (code)
                    return FUNC2(ctx, JBIG2_SEVERITY_FATAL, segment->number, "failed to decode arithmetic code when handling generic template2 optimized");
                result |= bit << (7 - x_minor);
                CONTEXT = ((CONTEXT & 0x1bd) << 1) | bit | ((line_m1 >> (10 - x_minor)) & 0x4) | ((line_m2 >> (10 - x_minor)) & 0x80);
            }
            gbreg_line[x >> 3] = result;
        }
#ifdef OUTPUT_PBM
        fwrite(gbreg_line, 1, rowstride, stdout);
#endif
        line2 = line1;
        line1 = gbreg_line;
        gbreg_line += rowstride;
    }

    return 0;
}