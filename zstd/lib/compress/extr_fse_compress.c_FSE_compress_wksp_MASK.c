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
typedef  int /*<<< orphan*/  S16 ;
typedef  int /*<<< orphan*/  FSE_CTable ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (size_t,int /*<<< orphan*/ ) ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 size_t FUNC3 (unsigned int,unsigned int) ; 
 unsigned int FSE_DEFAULT_TABLELOG ; 
 int FSE_MAX_SYMBOL_VALUE ; 
 size_t FUNC4 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int,unsigned int,void*,size_t const) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,void const*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned int,unsigned int*,size_t,unsigned int) ; 
 unsigned int FUNC8 (unsigned int,size_t,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (unsigned int*,unsigned int*,void const*,size_t,void*,size_t const) ; 
 size_t cSize ; 
 size_t maxCount ; 
 size_t nc_err ; 
 int /*<<< orphan*/  tableLog_tooLarge ; 

size_t FUNC11 (void* dst, size_t dstSize, const void* src, size_t srcSize, unsigned maxSymbolValue, unsigned tableLog, void* workSpace, size_t wkspSize)
{
    BYTE* const ostart = (BYTE*) dst;
    BYTE* op = ostart;
    BYTE* const oend = ostart + dstSize;

    unsigned count[FSE_MAX_SYMBOL_VALUE+1];
    S16   norm[FSE_MAX_SYMBOL_VALUE+1];
    FSE_CTable* CTable = (FSE_CTable*)workSpace;
    size_t const CTableSize = FUNC3(tableLog, maxSymbolValue);
    void* scratchBuffer = (void*)(CTable + CTableSize);
    size_t const scratchBufferSize = wkspSize - (CTableSize * sizeof(FSE_CTable));

    /* init conditions */
    if (wkspSize < FUNC4(tableLog, maxSymbolValue)) return FUNC2(tableLog_tooLarge);
    if (srcSize <= 1) return 0;  /* Not compressible */
    if (!maxSymbolValue) maxSymbolValue = FSE_MAX_SYMBOL_VALUE;
    if (!tableLog) tableLog = FSE_DEFAULT_TABLELOG;

    /* Scan input and build symbol stats */
    {   FUNC1(maxCount, FUNC10(count, &maxSymbolValue, src, srcSize, scratchBuffer, scratchBufferSize) );
        if (maxCount == srcSize) return 1;   /* only a single symbol in src : rle */
        if (maxCount == 1) return 0;         /* each symbol present maximum once => not compressible */
        if (maxCount < (srcSize >> 7)) return 0;   /* Heuristic : not compressible enough */
    }

    tableLog = FUNC8(tableLog, srcSize, maxSymbolValue);
    FUNC0( FUNC7(norm, tableLog, count, srcSize, maxSymbolValue) );

    /* Write table description header */
    {   FUNC1(nc_err, FUNC9(op, oend-op, norm, maxSymbolValue, tableLog) );
        op += nc_err;
    }

    /* Compress */
    FUNC0( FUNC5(CTable, norm, maxSymbolValue, tableLog, scratchBuffer, scratchBufferSize) );
    {   FUNC1(cSize, FUNC6(op, oend - op, src, srcSize, CTable) );
        if (cSize == 0) return 0;   /* not enough space for compressed data */
        op += cSize;
    }

    /* check compressibility */
    if ( (size_t)(op-ostart) >= srcSize-1 ) return 0;

    return op-ostart;
}