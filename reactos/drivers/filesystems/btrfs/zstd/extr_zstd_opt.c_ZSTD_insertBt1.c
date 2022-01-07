
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__* base; scalar_t__* dictBase; int dictLimit; int lowLimit; } ;
struct TYPE_7__ {int hashLog; int chainLog; unsigned int searchLog; } ;
struct TYPE_6__ {int* hashTable; int* chainTable; TYPE_1__ window; TYPE_3__ cParams; } ;
typedef TYPE_2__ ZSTD_matchState_t ;
typedef TYPE_3__ ZSTD_compressionParameters ;
typedef int U32 ;
typedef scalar_t__ BYTE ;


 int DEBUGLOG (int,char*,int const) ;
 int MIN (int,int) ;
 scalar_t__ ZSTD_count (scalar_t__ const* const,scalar_t__ const*,scalar_t__ const* const) ;
 scalar_t__ ZSTD_count_2segments (scalar_t__ const* const,scalar_t__ const*,scalar_t__ const* const,scalar_t__ const* const,scalar_t__ const* const) ;
 size_t ZSTD_hashPtr (scalar_t__ const* const,int const,int const) ;
 int assert (int) ;

__attribute__((used)) static U32 ZSTD_insertBt1(
                ZSTD_matchState_t* ms,
                const BYTE* const ip, const BYTE* const iend,
                U32 const mls, const int extDict)
{
    const ZSTD_compressionParameters* const cParams = &ms->cParams;
    U32* const hashTable = ms->hashTable;
    U32 const hashLog = cParams->hashLog;
    size_t const h = ZSTD_hashPtr(ip, hashLog, mls);
    U32* const bt = ms->chainTable;
    U32 const btLog = cParams->chainLog - 1;
    U32 const btMask = (1 << btLog) - 1;
    U32 matchIndex = hashTable[h];
    size_t commonLengthSmaller=0, commonLengthLarger=0;
    const BYTE* const base = ms->window.base;
    const BYTE* const dictBase = ms->window.dictBase;
    const U32 dictLimit = ms->window.dictLimit;
    const BYTE* const dictEnd = dictBase + dictLimit;
    const BYTE* const prefixStart = base + dictLimit;
    const BYTE* match;
    const U32 current = (U32)(ip-base);
    const U32 btLow = btMask >= current ? 0 : current - btMask;
    U32* smallerPtr = bt + 2*(current&btMask);
    U32* largerPtr = smallerPtr + 1;
    U32 dummy32;
    U32 const windowLow = ms->window.lowLimit;
    U32 const matchLow = windowLow ? windowLow : 1;
    U32 matchEndIdx = current+8+1;
    size_t bestLength = 8;
    U32 nbCompares = 1U << cParams->searchLog;







    DEBUGLOG(8, "ZSTD_insertBt1 (%u)", current);

    assert(ip <= iend-8);
    hashTable[h] = current;

    while (nbCompares-- && (matchIndex >= matchLow)) {
        U32* const nextPtr = bt + 2*(matchIndex & btMask);
        size_t matchLength = MIN(commonLengthSmaller, commonLengthLarger);
        assert(matchIndex < current);
        if (!extDict || (matchIndex+matchLength >= dictLimit)) {
            assert(matchIndex+matchLength >= dictLimit);
            match = base + matchIndex;
            matchLength += ZSTD_count(ip+matchLength, match+matchLength, iend);
        } else {
            match = dictBase + matchIndex;
            matchLength += ZSTD_count_2segments(ip+matchLength, match+matchLength, iend, dictEnd, prefixStart);
            if (matchIndex+matchLength >= dictLimit)
                match = base + matchIndex;
        }

        if (matchLength > bestLength) {
            bestLength = matchLength;
            if (matchLength > matchEndIdx - matchIndex)
                matchEndIdx = matchIndex + (U32)matchLength;
        }

        if (ip+matchLength == iend) {
            break;
        }

        if (match[matchLength] < ip[matchLength]) {

            *smallerPtr = matchIndex;
            commonLengthSmaller = matchLength;
            if (matchIndex <= btLow) { smallerPtr=&dummy32; break; }
            smallerPtr = nextPtr+1;
            matchIndex = nextPtr[1];
        } else {

            *largerPtr = matchIndex;
            commonLengthLarger = matchLength;
            if (matchIndex <= btLow) { largerPtr=&dummy32; break; }
            largerPtr = nextPtr;
            matchIndex = nextPtr[0];
    } }

    *smallerPtr = *largerPtr = 0;
    if (bestLength > 384) return MIN(192, (U32)(bestLength - 384));
    assert(matchEndIdx > current + 8);
    return matchEndIdx - (current + 8);
}
