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
struct TYPE_5__ {size_t size; size_t pos; void* dst; } ;
typedef  TYPE_1__ ZSTD_outBuffer ;
struct TYPE_6__ {size_t size; scalar_t__ pos; void const* src; } ;
typedef  TYPE_2__ ZSTD_inBuffer ;
typedef  int /*<<< orphan*/  ZSTD_DCtx ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  ZSTD_error_dstSize_tooSmall ; 
 scalar_t__ FUNC1 (size_t) ; 

__attribute__((used)) static size_t FUNC2(
    const void* srcBuffer, size_t srcSize,
    void* dstBuffer, size_t dstSize,
    void* addArgs) {
    size_t moreToFlush = 1;
    ZSTD_DCtx* dctx = (ZSTD_DCtx*)addArgs;
    ZSTD_inBuffer in;
    ZSTD_outBuffer out;
    in.src = srcBuffer;
    in.size = srcSize;
    in.pos = 0;
    out.dst = dstBuffer;
    out.size = dstSize;
    out.pos = 0;
    while (moreToFlush) {
        if(out.pos == out.size) {
            return (size_t)-ZSTD_error_dstSize_tooSmall;
        }
        moreToFlush = FUNC0(dctx,
                            &out, &in);
        if (FUNC1(moreToFlush)) {
            return moreToFlush;
        }
    }
    return out.pos;

}