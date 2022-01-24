#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  ZSTD_CCtx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 size_t FUNC3 (int /*<<< orphan*/ *,void*,size_t,size_t*,void const*,size_t,size_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZSTD_e_end ; 
 int /*<<< orphan*/  ZSTD_reset_session_only ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  dstSize_tooSmall ; 

size_t FUNC5(ZSTD_CCtx* cctx,
                      void* dst, size_t dstCapacity,
                      const void* src, size_t srcSize)
{
    FUNC2(cctx, ZSTD_reset_session_only);
    {   size_t oPos = 0;
        size_t iPos = 0;
        size_t const result = FUNC3(cctx,
                                        dst, dstCapacity, &oPos,
                                        src, srcSize, &iPos,
                                        ZSTD_e_end);
        FUNC0(result);
        if (result != 0) {  /* compression not completed, due to lack of output space */
            FUNC4(oPos == dstCapacity);
            FUNC1(dstSize_tooSmall);
        }
        FUNC4(iPos == srcSize);   /* all input is expected consumed */
        return oPos;
    }
}