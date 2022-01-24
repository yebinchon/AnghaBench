#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ srcStart; scalar_t__ src; scalar_t__ dataStart; scalar_t__ data; } ;
typedef  TYPE_1__ frame_t ;
typedef  int /*<<< orphan*/  ZSTD_DCtx ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  DECOMPRESSED_BUFFER ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAX_DECOMPRESSED_SIZE ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 size_t FUNC2 (int /*<<< orphan*/ *) ; 
 size_t FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (size_t) ; 
 int /*<<< orphan*/  corruption_detected ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,scalar_t__,int) ; 

__attribute__((used)) static size_t FUNC7(frame_t* fr)
{
    ZSTD_DCtx* dctx = FUNC1();
    size_t ret = FUNC2(dctx);
    if (FUNC5(ret)) return ret;

    ret = FUNC3(
            dctx,
            DECOMPRESSED_BUFFER, MAX_DECOMPRESSED_SIZE,
            fr->dataStart, (BYTE*)fr->data - (BYTE*)fr->dataStart);
    FUNC4(dctx);
    if (FUNC5(ret)) return ret;

    if (FUNC6(DECOMPRESSED_BUFFER, fr->srcStart,
               (BYTE*)fr->src - (BYTE*)fr->srcStart) != 0) {
        return FUNC0(corruption_detected);
    }

    return ret;
}