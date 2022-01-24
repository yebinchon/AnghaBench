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
typedef  int /*<<< orphan*/  ZSTD_optimal_t ;
typedef  int /*<<< orphan*/  ZSTD_match_t ;
struct TYPE_3__ {scalar_t__ strategy; size_t chainLog; size_t hashLog; int minMatch; int /*<<< orphan*/  windowLog; } ;
typedef  TYPE_1__ ZSTD_compressionParameters ;
typedef  int U32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int,int,int) ; 
 int Litbits ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int MaxLL ; 
 int MaxML ; 
 int MaxOff ; 
 int /*<<< orphan*/  ZSTD_HASHLOG3_MAX ; 
 int ZSTD_OPT_NUM ; 
 scalar_t__ ZSTD_btopt ; 
 size_t FUNC2 (int) ; 
 scalar_t__ ZSTD_fast ; 

__attribute__((used)) static size_t
FUNC3(const ZSTD_compressionParameters* const cParams,
                       const U32 forCCtx)
{
    size_t const chainSize = (cParams->strategy == ZSTD_fast) ? 0 : ((size_t)1 << cParams->chainLog);
    size_t const hSize = ((size_t)1) << cParams->hashLog;
    U32    const hashLog3 = (forCCtx && cParams->minMatch==3) ? FUNC1(ZSTD_HASHLOG3_MAX, cParams->windowLog) : 0;
    size_t const h3Size = hashLog3 ? ((size_t)1) << hashLog3 : 0;
    /* We don't use ZSTD_cwksp_alloc_size() here because the tables aren't
     * surrounded by redzones in ASAN. */
    size_t const tableSpace = chainSize * sizeof(U32)
                            + hSize * sizeof(U32)
                            + h3Size * sizeof(U32);
    size_t const optPotentialSpace =
        FUNC2((MaxML+1) * sizeof(U32))
      + FUNC2((MaxLL+1) * sizeof(U32))
      + FUNC2((MaxOff+1) * sizeof(U32))
      + FUNC2((1<<Litbits) * sizeof(U32))
      + FUNC2((ZSTD_OPT_NUM+1) * sizeof(ZSTD_match_t))
      + FUNC2((ZSTD_OPT_NUM+1) * sizeof(ZSTD_optimal_t));
    size_t const optSpace = (forCCtx && (cParams->strategy >= ZSTD_btopt))
                                ? optPotentialSpace
                                : 0;
    FUNC0(4, "chainSize: %u - hSize: %u - h3Size: %u",
                (U32)chainSize, (U32)hSize, (U32)h3Size);
    return tableSpace + optSpace;
}