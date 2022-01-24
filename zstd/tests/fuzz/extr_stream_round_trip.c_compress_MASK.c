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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_7__ {scalar_t__ pos; } ;
typedef  TYPE_1__ ZSTD_outBuffer ;
struct TYPE_8__ {scalar_t__ pos; scalar_t__ size; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/ * member_0; } ;
typedef  TYPE_2__ ZSTD_inBuffer ;
typedef  int /*<<< orphan*/  FUZZ_dataProducer_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t const) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,size_t const,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ ,TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZSTD_e_continue ; 
 int /*<<< orphan*/  ZSTD_e_end ; 
 int /*<<< orphan*/  ZSTD_e_flush ; 
 int /*<<< orphan*/  ZSTD_reset_session_only ; 
 int /*<<< orphan*/  cctx ; 
 TYPE_2__ FUNC5 (int /*<<< orphan*/  const**,size_t*,int /*<<< orphan*/ *) ; 
 TYPE_1__ FUNC6 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *) ; 

__attribute__((used)) static size_t FUNC7(uint8_t *dst, size_t capacity,
                       const uint8_t *src, size_t srcSize,
                     FUZZ_dataProducer_t *producer)
{
    size_t dstSize = 0;
    FUNC3(cctx, ZSTD_reset_session_only);
    FUNC2(cctx, srcSize, producer);

    while (srcSize > 0) {
        ZSTD_inBuffer in = FUNC5(&src, &srcSize, producer);
        /* Mode controls the action. If mode == -1 we pick a new mode */
        int mode = -1;
        while (in.pos < in.size || mode != -1) {
            ZSTD_outBuffer out = FUNC6(dst, capacity, producer);
            /* Previous action finished, pick a new mode. */
            if (mode == -1) mode = FUNC1(producer, 0, 9);
            switch (mode) {
                case 0: /* fall-through */
                case 1: /* fall-through */
                case 2: {
                    size_t const ret =
                        FUNC4(cctx, &out, &in, ZSTD_e_flush);
                    FUNC0(ret);
                    if (ret == 0)
                        mode = -1;
                    break;
                }
                case 3: {
                    size_t ret =
                        FUNC4(cctx, &out, &in, ZSTD_e_end);
                    FUNC0(ret);
                    /* Reset the compressor when the frame is finished */
                    if (ret == 0) {
                        FUNC3(cctx, ZSTD_reset_session_only);
                        if (FUNC1(producer, 0, 7) == 0) {
                            size_t const remaining = in.size - in.pos;
                            FUNC2(cctx, remaining, producer);
                        }
                        mode = -1;
                    }
                    break;
                }
                default: {
                    size_t const ret =
                        FUNC4(cctx, &out, &in, ZSTD_e_continue);
                    FUNC0(ret);
                    mode = -1;
                }
            }
            dst += out.pos;
            dstSize += out.pos;
            capacity -= out.pos;
        }
    }
    for (;;) {
        ZSTD_inBuffer in = {NULL, 0, 0};
        ZSTD_outBuffer out = FUNC6(dst, capacity, producer);
        size_t const ret = FUNC4(cctx, &out, &in, ZSTD_e_end);
        FUNC0(ret);

        dst += out.pos;
        dstSize += out.pos;
        capacity -= out.pos;
        if (ret == 0)
            break;
    }
    return dstSize;
}