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
 int FSEv05_MAX_SYMBOL_VALUE ; 
 size_t FUNC1 (int /*<<< orphan*/ ,short*,unsigned int,unsigned int) ; 
 size_t FUNC2 (void*,size_t,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (size_t) ; 
 size_t FUNC4 (short*,unsigned int*,unsigned int*,int /*<<< orphan*/  const* const,size_t) ; 
 int /*<<< orphan*/  srcSize_wrong ; 

size_t FUNC5(void* dst, size_t maxDstSize, const void* cSrc, size_t cSrcSize)
{
    const BYTE* const istart = (const BYTE*)cSrc;
    const BYTE* ip = istart;
    short counting[FSEv05_MAX_SYMBOL_VALUE+1];
    DTable_max_t dt;   /* Static analyzer seems unable to understand this table will be properly initialized later */
    unsigned tableLog;
    unsigned maxSymbolValue = FSEv05_MAX_SYMBOL_VALUE;
    size_t errorCode;

    if (cSrcSize<2) return FUNC0(srcSize_wrong);   /* too small input size */

    /* normal FSEv05 decoding mode */
    errorCode = FUNC4 (counting, &maxSymbolValue, &tableLog, istart, cSrcSize);
    if (FUNC3(errorCode)) return errorCode;
    if (errorCode >= cSrcSize) return FUNC0(srcSize_wrong);   /* too small input size */
    ip += errorCode;
    cSrcSize -= errorCode;

    errorCode = FUNC1 (dt, counting, maxSymbolValue, tableLog);
    if (FUNC3(errorCode)) return errorCode;

    /* always return, even if it is an error code */
    return FUNC2 (dst, maxDstSize, ip, cSrcSize, dt);
}