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
typedef  int /*<<< orphan*/  rawSeq ;
struct TYPE_7__ {size_t windowLog; int searchLength; } ;
typedef  TYPE_1__ ZSTD_compressionParameters ;
typedef  int /*<<< orphan*/  ZSTD_compressedBlockState_t ;
struct TYPE_8__ {scalar_t__ nbWorkers; int /*<<< orphan*/  ldmParams; } ;
typedef  TYPE_2__ ZSTD_CCtx_params ;
typedef  int /*<<< orphan*/  ZSTD_CCtx ;
typedef  size_t U32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,size_t) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GENERIC ; 
 size_t HUF_WORKSPACE_SIZE ; 
 size_t FUNC2 (int /*<<< orphan*/ ,size_t) ; 
 size_t const WILDCOPY_OVERLENGTH ; 
 int /*<<< orphan*/  ZSTD_BLOCKSIZE_MAX ; 
 TYPE_1__ FUNC3 (TYPE_2__ const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,size_t const) ; 
 size_t FUNC5 (int /*<<< orphan*/ ) ; 
 size_t FUNC6 (TYPE_1__ const*,int) ; 

size_t FUNC7(const ZSTD_CCtx_params* params)
{
    /* Estimate CCtx size is supported for single-threaded compression only. */
    if (params->nbWorkers > 0) { return FUNC1(GENERIC); }
    {   ZSTD_compressionParameters const cParams =
                FUNC3(params, 0, 0);
        size_t const blockSize = FUNC2(ZSTD_BLOCKSIZE_MAX, (size_t)1 << cParams.windowLog);
        U32    const divider = (cParams.searchLength==3) ? 3 : 4;
        size_t const maxNbSeq = blockSize / divider;
        size_t const tokenSpace = WILDCOPY_OVERLENGTH + blockSize + 11*maxNbSeq;
        size_t const entropySpace = HUF_WORKSPACE_SIZE;
        size_t const blockStateSpace = 2 * sizeof(ZSTD_compressedBlockState_t);
        size_t const matchStateSize = FUNC6(&cParams, /* forCCtx */ 1);

        size_t const ldmSpace = FUNC5(params->ldmParams);
        size_t const ldmSeqSpace = FUNC4(params->ldmParams, blockSize) * sizeof(rawSeq);

        size_t const neededSpace = entropySpace + blockStateSpace + tokenSpace +
                                   matchStateSize + ldmSpace + ldmSeqSpace;

        FUNC0(5, "sizeof(ZSTD_CCtx) : %u", (U32)sizeof(ZSTD_CCtx));
        FUNC0(5, "estimate workSpace : %u", (U32)neededSpace);
        return sizeof(ZSTD_CCtx) + neededSpace;
    }
}