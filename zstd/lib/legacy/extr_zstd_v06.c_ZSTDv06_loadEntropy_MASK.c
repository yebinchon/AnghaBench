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
struct TYPE_3__ {int flagRepeatTable; int /*<<< orphan*/  LLTable; int /*<<< orphan*/  MLTable; int /*<<< orphan*/  OffTable; int /*<<< orphan*/  hufTableX4; } ;
typedef  TYPE_1__ ZSTDv06_DCtx ;
typedef  scalar_t__ U32 ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ,short*,unsigned int,unsigned int) ; 
 scalar_t__ FUNC2 (size_t const) ; 
 size_t FUNC3 (short*,...) ; 
 scalar_t__ FUNC4 (size_t) ; 
 size_t FUNC5 (int /*<<< orphan*/ ,void const*,size_t) ; 
 unsigned int LLFSELog ; 
 unsigned int MLFSELog ; 
 int MaxLL ; 
 int MaxML ; 
 scalar_t__ MaxOff ; 
 scalar_t__ OffFSELog ; 
 int /*<<< orphan*/  dictionary_corrupted ; 

__attribute__((used)) static size_t FUNC6(ZSTDv06_DCtx* dctx, const void* dict, size_t dictSize)
{
    size_t hSize, offcodeHeaderSize, matchlengthHeaderSize, litlengthHeaderSize;

    hSize = FUNC5(dctx->hufTableX4, dict, dictSize);
    if (FUNC4(hSize)) return FUNC0(dictionary_corrupted);
    dict = (const char*)dict + hSize;
    dictSize -= hSize;

    {   short offcodeNCount[MaxOff+1];
        U32 offcodeMaxValue=MaxOff, offcodeLog;
        offcodeHeaderSize = FUNC3(offcodeNCount, &offcodeMaxValue, &offcodeLog, dict, dictSize);
        if (FUNC2(offcodeHeaderSize)) return FUNC0(dictionary_corrupted);
        if (offcodeLog > OffFSELog) return FUNC0(dictionary_corrupted);
        { size_t const errorCode = FUNC1(dctx->OffTable, offcodeNCount, offcodeMaxValue, offcodeLog);
          if (FUNC2(errorCode)) return FUNC0(dictionary_corrupted); }
        dict = (const char*)dict + offcodeHeaderSize;
        dictSize -= offcodeHeaderSize;
    }

    {   short matchlengthNCount[MaxML+1];
        unsigned matchlengthMaxValue = MaxML, matchlengthLog;
        matchlengthHeaderSize = FUNC3(matchlengthNCount, &matchlengthMaxValue, &matchlengthLog, dict, dictSize);
        if (FUNC2(matchlengthHeaderSize)) return FUNC0(dictionary_corrupted);
        if (matchlengthLog > MLFSELog) return FUNC0(dictionary_corrupted);
        { size_t const errorCode = FUNC1(dctx->MLTable, matchlengthNCount, matchlengthMaxValue, matchlengthLog);
          if (FUNC2(errorCode)) return FUNC0(dictionary_corrupted); }
        dict = (const char*)dict + matchlengthHeaderSize;
        dictSize -= matchlengthHeaderSize;
    }

    {   short litlengthNCount[MaxLL+1];
        unsigned litlengthMaxValue = MaxLL, litlengthLog;
        litlengthHeaderSize = FUNC3(litlengthNCount, &litlengthMaxValue, &litlengthLog, dict, dictSize);
        if (FUNC2(litlengthHeaderSize)) return FUNC0(dictionary_corrupted);
        if (litlengthLog > LLFSELog) return FUNC0(dictionary_corrupted);
        { size_t const errorCode = FUNC1(dctx->LLTable, litlengthNCount, litlengthMaxValue, litlengthLog);
          if (FUNC2(errorCode)) return FUNC0(dictionary_corrupted); }
    }

    dctx->flagRepeatTable = 1;
    return hSize + offcodeHeaderSize + matchlengthHeaderSize + litlengthHeaderSize;
}