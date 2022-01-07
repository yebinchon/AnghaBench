
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ZSTD_optimal_t ;
typedef int ZSTD_match_t ;
struct TYPE_3__ {scalar_t__ strategy; size_t chainLog; size_t hashLog; int minMatch; int windowLog; } ;
typedef TYPE_1__ ZSTD_compressionParameters ;
typedef int U32 ;


 int DEBUGLOG (int,char*,int,int,int) ;
 int Litbits ;
 int MIN (int ,int ) ;
 int MaxLL ;
 int MaxML ;
 int MaxOff ;
 int ZSTD_HASHLOG3_MAX ;
 int ZSTD_OPT_NUM ;
 scalar_t__ ZSTD_btopt ;
 size_t ZSTD_cwksp_alloc_size (int) ;
 scalar_t__ ZSTD_fast ;

__attribute__((used)) static size_t
ZSTD_sizeof_matchState(const ZSTD_compressionParameters* const cParams,
                       const U32 forCCtx)
{
    size_t const chainSize = (cParams->strategy == ZSTD_fast) ? 0 : ((size_t)1 << cParams->chainLog);
    size_t const hSize = ((size_t)1) << cParams->hashLog;
    U32 const hashLog3 = (forCCtx && cParams->minMatch==3) ? MIN(ZSTD_HASHLOG3_MAX, cParams->windowLog) : 0;
    size_t const h3Size = hashLog3 ? ((size_t)1) << hashLog3 : 0;


    size_t const tableSpace = chainSize * sizeof(U32)
                            + hSize * sizeof(U32)
                            + h3Size * sizeof(U32);
    size_t const optPotentialSpace =
        ZSTD_cwksp_alloc_size((MaxML+1) * sizeof(U32))
      + ZSTD_cwksp_alloc_size((MaxLL+1) * sizeof(U32))
      + ZSTD_cwksp_alloc_size((MaxOff+1) * sizeof(U32))
      + ZSTD_cwksp_alloc_size((1<<Litbits) * sizeof(U32))
      + ZSTD_cwksp_alloc_size((ZSTD_OPT_NUM+1) * sizeof(ZSTD_match_t))
      + ZSTD_cwksp_alloc_size((ZSTD_OPT_NUM+1) * sizeof(ZSTD_optimal_t));
    size_t const optSpace = (forCCtx && (cParams->strategy >= ZSTD_btopt))
                                ? optPotentialSpace
                                : 0;
    DEBUGLOG(4, "chainSize: %u - hSize: %u - h3Size: %u",
                (U32)chainSize, (U32)hSize, (U32)h3Size);
    return tableSpace + optSpace;
}
