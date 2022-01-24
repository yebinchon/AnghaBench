#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  byte ;
struct TYPE_8__ {scalar_t__ stride; scalar_t__ height; int /*<<< orphan*/  width; int /*<<< orphan*/ * data; } ;
struct TYPE_7__ {int word; int bit_index; scalar_t__ data_index; } ;
typedef  TYPE_1__ Jbig2MmrCtx ;
typedef  TYPE_2__ Jbig2Image ;
typedef  int /*<<< orphan*/  Jbig2GenericRegionParams ;
typedef  int /*<<< orphan*/  Jbig2Ctx ;

/* Variables and functions */
 int /*<<< orphan*/  JBIG2_SEVERITY_WARNING ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/  const*,size_t) ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__ const) ; 

int
FUNC5(Jbig2Ctx *ctx, const Jbig2GenericRegionParams *params, const byte *data, size_t size, Jbig2Image *image, size_t *consumed_bytes)
{
    Jbig2MmrCtx mmr;
    const uint32_t rowstride = image->stride;
    byte *dst = image->data;
    byte *ref = NULL;
    uint32_t y;
    int code = 0;
    const uint32_t EOFB = 0x001001;
    int eofb = 0;

    FUNC1(&mmr, image->width, image->height, data, size);

    for (y = 0; !eofb && y < image->height; y++) {
        FUNC4(dst, 0, rowstride);
        code = FUNC2(ctx, &mmr, ref, dst, &eofb);
        if (code < 0)
            return FUNC3(ctx, JBIG2_SEVERITY_WARNING, -1, "failed to decode halftone mmr line");
        ref = dst;
        dst += rowstride;
    }

    if (eofb && y < image->height) {
        FUNC4(dst, 0, rowstride * (image->height - y));
    }

    /* test for EOFB (see section 6.2.6) */
    if (mmr.word >> 8 == EOFB) {
        FUNC0(&mmr, 24);
    }

    *consumed_bytes += mmr.data_index + (mmr.bit_index >> 3) + (mmr.bit_index > 0 ? 1 : 0);
    return code;
}