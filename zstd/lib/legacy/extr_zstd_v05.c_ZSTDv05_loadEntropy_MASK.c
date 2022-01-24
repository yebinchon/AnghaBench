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
struct TYPE_3__ {int flagStaticTables; int /*<<< orphan*/  LLTable; int /*<<< orphan*/  MLTable; int /*<<< orphan*/  OffTable; int /*<<< orphan*/  hufTableX4; } ;
typedef  TYPE_1__ ZSTDv05_DCtx ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ,short*,unsigned int,unsigned int) ; 
 scalar_t__ FUNC2 (size_t) ; 
 size_t FUNC3 (short*,unsigned int*,unsigned int*,void const*,size_t) ; 
 scalar_t__ FUNC4 (size_t) ; 
 size_t FUNC5 (int /*<<< orphan*/ ,void const*,size_t) ; 
 unsigned int LLFSEv05Log ; 
 unsigned int MLFSEv05Log ; 
 int MaxLL ; 
 int MaxML ; 
 int MaxOff ; 
 unsigned int OffFSEv05Log ; 
 int /*<<< orphan*/  dictionary_corrupted ; 

__attribute__((used)) static size_t FUNC6(ZSTDv05_DCtx* dctx, const void* dict, size_t dictSize)
{
    size_t hSize, offcodeHeaderSize, matchlengthHeaderSize, errorCode, litlengthHeaderSize;
    short offcodeNCount[MaxOff+1];
    unsigned offcodeMaxValue=MaxOff, offcodeLog;
    short matchlengthNCount[MaxML+1];
    unsigned matchlengthMaxValue = MaxML, matchlengthLog;
    short litlengthNCount[MaxLL+1];
    unsigned litlengthMaxValue = MaxLL, litlengthLog;

    hSize = FUNC5(dctx->hufTableX4, dict, dictSize);
    if (FUNC4(hSize)) return FUNC0(dictionary_corrupted);
    dict = (const char*)dict + hSize;
    dictSize -= hSize;

    offcodeHeaderSize = FUNC3(offcodeNCount, &offcodeMaxValue, &offcodeLog, dict, dictSize);
    if (FUNC2(offcodeHeaderSize)) return FUNC0(dictionary_corrupted);
    if (offcodeLog > OffFSEv05Log) return FUNC0(dictionary_corrupted);
    errorCode = FUNC1(dctx->OffTable, offcodeNCount, offcodeMaxValue, offcodeLog);
    if (FUNC2(errorCode)) return FUNC0(dictionary_corrupted);
    dict = (const char*)dict + offcodeHeaderSize;
    dictSize -= offcodeHeaderSize;

    matchlengthHeaderSize = FUNC3(matchlengthNCount, &matchlengthMaxValue, &matchlengthLog, dict, dictSize);
    if (FUNC2(matchlengthHeaderSize)) return FUNC0(dictionary_corrupted);
    if (matchlengthLog > MLFSEv05Log) return FUNC0(dictionary_corrupted);
    errorCode = FUNC1(dctx->MLTable, matchlengthNCount, matchlengthMaxValue, matchlengthLog);
    if (FUNC2(errorCode)) return FUNC0(dictionary_corrupted);
    dict = (const char*)dict + matchlengthHeaderSize;
    dictSize -= matchlengthHeaderSize;

    litlengthHeaderSize = FUNC3(litlengthNCount, &litlengthMaxValue, &litlengthLog, dict, dictSize);
    if (litlengthLog > LLFSEv05Log) return FUNC0(dictionary_corrupted);
    if (FUNC2(litlengthHeaderSize)) return FUNC0(dictionary_corrupted);
    errorCode = FUNC1(dctx->LLTable, litlengthNCount, litlengthMaxValue, litlengthLog);
    if (FUNC2(errorCode)) return FUNC0(dictionary_corrupted);

    dctx->flagStaticTables = 1;
    return hSize + offcodeHeaderSize + matchlengthHeaderSize + litlengthHeaderSize;
}