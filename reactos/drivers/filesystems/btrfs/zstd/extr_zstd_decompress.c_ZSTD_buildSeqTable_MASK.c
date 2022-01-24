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
typedef  size_t const U32 ;
typedef  int /*<<< orphan*/  S16 ;
typedef  size_t BYTE ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (size_t const) ; 
 size_t FUNC2 (int /*<<< orphan*/ *,size_t const*,size_t const*,void const*,size_t) ; 
 int /*<<< orphan*/  GENERIC ; 
 int /*<<< orphan*/  MaxSeq ; 
 int /*<<< orphan*/  FUNC3 (void const* const,size_t const) ; 
 int FUNC4 (size_t const) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t const,size_t const*,size_t const*,size_t const) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,size_t const,size_t const) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  corruption_detected ; 
#define  set_basic 131 
#define  set_compressed 130 
#define  set_repeat 129 
#define  set_rle 128 
 int /*<<< orphan*/  srcSize_wrong ; 

__attribute__((used)) static size_t FUNC8(ZSTD_seqSymbol* DTableSpace, const ZSTD_seqSymbol** DTablePtr,
                                 symbolEncodingType_e type, U32 max, U32 maxLog,
                                 const void* src, size_t srcSize,
                                 const U32* baseValue, const U32* nbAdditionalBits,
                                 const ZSTD_seqSymbol* defaultTable, U32 flagRepeatTable,
                                 int ddictIsCold, int nbSeq)
{
    switch(type)
    {
    case set_rle :
        if (!srcSize) return FUNC0(srcSize_wrong);
        if ( (*(const BYTE*)src) > max) return FUNC0(corruption_detected);
        {   U32 const symbol = *(const BYTE*)src;
            U32 const baseline = baseValue[symbol];
            U32 const nbBits = nbAdditionalBits[symbol];
            FUNC6(DTableSpace, baseline, nbBits);
        }
        *DTablePtr = DTableSpace;
        return 1;
    case set_basic :
        *DTablePtr = defaultTable;
        return 0;
    case set_repeat:
        if (!flagRepeatTable) return FUNC0(corruption_detected);
        /* prefetch FSE table if used */
        if (ddictIsCold && (nbSeq > 24 /* heuristic */)) {
            const void* const pStart = *DTablePtr;
            size_t const pSize = sizeof(ZSTD_seqSymbol) * (FUNC4(maxLog));
            FUNC3(pStart, pSize);
        }
        return 0;
    case set_compressed :
        {   U32 tableLog;
            S16 norm[MaxSeq+1];
            size_t const headerSize = FUNC2(norm, &max, &tableLog, src, srcSize);
            if (FUNC1(headerSize)) return FUNC0(corruption_detected);
            if (tableLog > maxLog) return FUNC0(corruption_detected);
            FUNC5(DTableSpace, norm, max, baseValue, nbAdditionalBits, tableLog);
            *DTablePtr = DTableSpace;
            return headerSize;
        }
    default :   /* impossible */
        FUNC7(0);
        return FUNC0(GENERIC);
    }
}