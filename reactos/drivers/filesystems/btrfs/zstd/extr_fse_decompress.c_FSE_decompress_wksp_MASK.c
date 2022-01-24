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
typedef  int /*<<< orphan*/  FSE_DTable ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int FSE_MAX_SYMBOL_VALUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,short*,unsigned int,unsigned int) ; 
 size_t FUNC3 (void*,size_t,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (size_t const) ; 
 size_t FUNC5 (short*,unsigned int*,unsigned int*,int /*<<< orphan*/  const* const,size_t) ; 
 int /*<<< orphan*/  tableLog_tooLarge ; 

size_t FUNC6(void* dst, size_t dstCapacity, const void* cSrc, size_t cSrcSize, FSE_DTable* workSpace, unsigned maxLog)
{
    const BYTE* const istart = (const BYTE*)cSrc;
    const BYTE* ip = istart;
    short counting[FSE_MAX_SYMBOL_VALUE+1];
    unsigned tableLog;
    unsigned maxSymbolValue = FSE_MAX_SYMBOL_VALUE;

    /* normal FSE decoding mode */
    size_t const NCountLength = FUNC5 (counting, &maxSymbolValue, &tableLog, istart, cSrcSize);
    if (FUNC4(NCountLength)) return NCountLength;
    //if (NCountLength >= cSrcSize) return ERROR(srcSize_wrong);   /* too small input size; supposed to be already checked in NCountLength, only remaining case : NCountLength==cSrcSize */
    if (tableLog > maxLog) return FUNC1(tableLog_tooLarge);
    ip += NCountLength;
    cSrcSize -= NCountLength;

    FUNC0( FUNC2 (workSpace, counting, maxSymbolValue, tableLog) );

    return FUNC3 (dst, dstCapacity, ip, cSrcSize, workSpace);   /* always return, even if it is an error code */
}