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
typedef  int symbolEncodingType_e ;
typedef  int /*<<< orphan*/  ZSTD_seqSymbol ;
typedef  size_t U32 ;
typedef  int /*<<< orphan*/  S16 ;
typedef  unsigned int BYTE ;

/* Variables and functions */
 int FUNC0 (size_t const) ; 
 size_t FUNC1 (int /*<<< orphan*/ *,unsigned int*,unsigned int*,void const*,size_t) ; 
 int /*<<< orphan*/  GENERIC ; 
 int /*<<< orphan*/  MaxSeq ; 
 int /*<<< orphan*/  FUNC2 (void const* const,size_t const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int,size_t const*,size_t const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,size_t const,size_t const) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  corruption_detected ; 
#define  set_basic 131 
#define  set_compressed 130 
#define  set_repeat 129 
#define  set_rle 128 
 int /*<<< orphan*/  srcSize_wrong ; 

__attribute__((used)) static size_t FUNC9(ZSTD_seqSymbol* DTableSpace, const ZSTD_seqSymbol** DTablePtr,
                                 symbolEncodingType_e type, unsigned max, U32 maxLog,
                                 const void* src, size_t srcSize,
                                 const U32* baseValue, const U32* nbAdditionalBits,
                                 const ZSTD_seqSymbol* defaultTable, U32 flagRepeatTable,
                                 int ddictIsCold, int nbSeq)
{
    switch(type)
    {
    case set_rle :
        FUNC4(!srcSize, srcSize_wrong);
        FUNC4((*(const BYTE*)src) > max, corruption_detected);
        {   U32 const symbol = *(const BYTE*)src;
            U32 const baseline = baseValue[symbol];
            U32 const nbBits = nbAdditionalBits[symbol];
            FUNC7(DTableSpace, baseline, nbBits);
        }
        *DTablePtr = DTableSpace;
        return 1;
    case set_basic :
        *DTablePtr = defaultTable;
        return 0;
    case set_repeat:
        FUNC4(!flagRepeatTable, corruption_detected);
        /* prefetch FSE table if used */
        if (ddictIsCold && (nbSeq > 24 /* heuristic */)) {
            const void* const pStart = *DTablePtr;
            size_t const pSize = sizeof(ZSTD_seqSymbol) * (FUNC5(maxLog));
            FUNC2(pStart, pSize);
        }
        return 0;
    case set_compressed :
        {   unsigned tableLog;
            S16 norm[MaxSeq+1];
            size_t const headerSize = FUNC1(norm, &max, &tableLog, src, srcSize);
            FUNC4(FUNC0(headerSize), corruption_detected);
            FUNC4(tableLog > maxLog, corruption_detected);
            FUNC6(DTableSpace, norm, max, baseValue, nbAdditionalBits, tableLog);
            *DTablePtr = DTableSpace;
            return headerSize;
        }
    default :
        FUNC8(0);
        FUNC3(GENERIC, "impossible");
    }
}