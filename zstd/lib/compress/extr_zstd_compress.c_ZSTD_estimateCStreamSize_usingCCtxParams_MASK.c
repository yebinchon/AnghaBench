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
struct TYPE_7__ {size_t windowLog; } ;
typedef  TYPE_1__ ZSTD_compressionParameters ;
struct TYPE_8__ {scalar_t__ nbWorkers; } ;
typedef  TYPE_2__ ZSTD_CCtx_params ;

/* Variables and functions */
 int /*<<< orphan*/  GENERIC ; 
 size_t FUNC0 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ZSTD_BLOCKSIZE_MAX ; 
 int /*<<< orphan*/  ZSTD_CONTENTSIZE_UNKNOWN ; 
 int FUNC2 (size_t const) ; 
 size_t FUNC3 (size_t const) ; 
 size_t FUNC4 (TYPE_2__ const*) ; 
 TYPE_1__ FUNC5 (TYPE_2__ const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

size_t FUNC6(const ZSTD_CCtx_params* params)
{
    FUNC1(params->nbWorkers > 0, GENERIC, "Estimate CCtx size is supported for single-threaded compression only.");
    {   ZSTD_compressionParameters const cParams =
                FUNC5(params, ZSTD_CONTENTSIZE_UNKNOWN, 0);
        size_t const CCtxSize = FUNC4(params);
        size_t const blockSize = FUNC0(ZSTD_BLOCKSIZE_MAX, (size_t)1 << cParams.windowLog);
        size_t const inBuffSize = ((size_t)1 << cParams.windowLog) + blockSize;
        size_t const outBuffSize = FUNC2(blockSize) + 1;
        size_t const streamingSize = FUNC3(inBuffSize)
                                   + FUNC3(outBuffSize);

        return CCtxSize + streamingSize;
    }
}