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
typedef  int /*<<< orphan*/  seqDef ;
typedef  int /*<<< orphan*/  rawSeq ;
struct TYPE_7__ {size_t windowLog; int minMatch; } ;
typedef  TYPE_1__ ZSTD_compressionParameters ;
typedef  int /*<<< orphan*/  ZSTD_compressedBlockState_t ;
struct TYPE_8__ {scalar_t__ nbWorkers; int /*<<< orphan*/  ldmParams; } ;
typedef  TYPE_2__ ZSTD_CCtx_params ;
typedef  int /*<<< orphan*/  ZSTD_CCtx ;
typedef  size_t U32 ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,size_t) ; 
 int /*<<< orphan*/  GENERIC ; 
 int HUF_WORKSPACE_SIZE ; 
 size_t FUNC1 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,char*) ; 
 int WILDCOPY_OVERLENGTH ; 
 int /*<<< orphan*/  ZSTD_BLOCKSIZE_MAX ; 
 int /*<<< orphan*/  ZSTD_CONTENTSIZE_UNKNOWN ; 
 int FUNC3 (size_t const) ; 
 TYPE_1__ FUNC4 (TYPE_2__ const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,size_t const) ; 
 size_t FUNC6 (int /*<<< orphan*/ ) ; 
 size_t FUNC7 (TYPE_1__ const*,int) ; 

size_t FUNC8(const ZSTD_CCtx_params* params)
{
    FUNC2(params->nbWorkers > 0, GENERIC, "Estimate CCtx size is supported for single-threaded compression only.");
    {   ZSTD_compressionParameters const cParams =
                FUNC4(params, ZSTD_CONTENTSIZE_UNKNOWN, 0);
        size_t const blockSize = FUNC1(ZSTD_BLOCKSIZE_MAX, (size_t)1 << cParams.windowLog);
        U32    const divider = (cParams.minMatch==3) ? 3 : 4;
        size_t const maxNbSeq = blockSize / divider;
        size_t const tokenSpace = FUNC3(WILDCOPY_OVERLENGTH + blockSize)
                                + FUNC3(maxNbSeq * sizeof(seqDef))
                                + 3 * FUNC3(maxNbSeq * sizeof(BYTE));
        size_t const entropySpace = FUNC3(HUF_WORKSPACE_SIZE);
        size_t const blockStateSpace = 2 * FUNC3(sizeof(ZSTD_compressedBlockState_t));
        size_t const matchStateSize = FUNC7(&cParams, /* forCCtx */ 1);

        size_t const ldmSpace = FUNC6(params->ldmParams);
        size_t const ldmSeqSpace = FUNC3(FUNC5(params->ldmParams, blockSize) * sizeof(rawSeq));

        size_t const neededSpace = entropySpace + blockStateSpace + tokenSpace +
                                   matchStateSize + ldmSpace + ldmSeqSpace;
        size_t const cctxSpace = FUNC3(sizeof(ZSTD_CCtx));

        FUNC0(5, "sizeof(ZSTD_CCtx) : %u", (U32)cctxSpace);
        FUNC0(5, "estimate workspace : %u", (U32)neededSpace);
        return cctxSpace + neededSpace;
    }
}