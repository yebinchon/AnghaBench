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
typedef  int /*<<< orphan*/  DTable_max_t ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int FSEv07_MAX_SYMBOL_VALUE ; 
 size_t FUNC1 (int /*<<< orphan*/ ,short*,unsigned int,unsigned int) ; 
 size_t FUNC2 (void*,size_t,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (size_t const) ; 
 size_t FUNC4 (short*,unsigned int*,unsigned int*,int /*<<< orphan*/  const* const,size_t) ; 
 int /*<<< orphan*/  srcSize_wrong ; 

size_t FUNC5(void* dst, size_t maxDstSize, const void* cSrc, size_t cSrcSize)
{
    const BYTE* const istart = (const BYTE*)cSrc;
    const BYTE* ip = istart;
    short counting[FSEv07_MAX_SYMBOL_VALUE+1];
    DTable_max_t dt;   /* Static analyzer seems unable to understand this table will be properly initialized later */
    unsigned tableLog;
    unsigned maxSymbolValue = FSEv07_MAX_SYMBOL_VALUE;

    if (cSrcSize<2) return FUNC0(srcSize_wrong);   /* too small input size */

    /* normal FSE decoding mode */
    {   size_t const NCountLength = FUNC4 (counting, &maxSymbolValue, &tableLog, istart, cSrcSize);
        if (FUNC3(NCountLength)) return NCountLength;
        if (NCountLength >= cSrcSize) return FUNC0(srcSize_wrong);   /* too small input size */
        ip += NCountLength;
        cSrcSize -= NCountLength;
    }

    { size_t const errorCode = FUNC1 (dt, counting, maxSymbolValue, tableLog);
      if (FUNC3(errorCode)) return errorCode; }

    return FUNC2 (dst, maxDstSize, ip, cSrcSize, dt);   /* always return, even if it is an error code */
}