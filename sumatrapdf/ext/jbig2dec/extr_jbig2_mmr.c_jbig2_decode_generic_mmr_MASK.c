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
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  byte ;
struct TYPE_6__ {scalar_t__ stride; scalar_t__ height; int /*<<< orphan*/  width; int /*<<< orphan*/ * data; } ;
struct TYPE_5__ {int /*<<< orphan*/  number; } ;
typedef  TYPE_1__ Jbig2Segment ;
typedef  int /*<<< orphan*/  Jbig2MmrCtx ;
typedef  TYPE_2__ Jbig2Image ;
typedef  int /*<<< orphan*/  Jbig2GenericRegionParams ;
typedef  int /*<<< orphan*/  Jbig2Ctx ;

/* Variables and functions */
 int /*<<< orphan*/  JBIG2_SEVERITY_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/  const*,size_t) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__ const) ; 

int
FUNC4(Jbig2Ctx *ctx, Jbig2Segment *segment, const Jbig2GenericRegionParams *params, const byte *data, size_t size, Jbig2Image *image)
{
    Jbig2MmrCtx mmr;
    const uint32_t rowstride = image->stride;
    byte *dst = image->data;
    byte *ref = NULL;
    uint32_t y;
    int code = 0;
    int eofb = 0;

    FUNC0(&mmr, image->width, image->height, data, size);

    for (y = 0; !eofb && y < image->height; y++) {
        FUNC3(dst, 0, rowstride);
        code = FUNC1(ctx, &mmr, ref, dst, &eofb);
        if (code < 0)
            return FUNC2(ctx, JBIG2_SEVERITY_WARNING, segment->number, "failed to decode mmr line");
        ref = dst;
        dst += rowstride;
    }

    if (eofb && y < image->height) {
        FUNC3(dst, 0, rowstride * (image->height - y));
    }

    return code;
}