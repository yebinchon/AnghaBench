
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__* base; scalar_t__* dictBase; int dictLimit; } ;
struct TYPE_10__ {int hashLog; int chainLog; unsigned int searchLog; int windowLog; } ;
struct TYPE_9__ {int* hashTable; int* chainTable; int nextToUpdate; TYPE_1__ window; TYPE_3__ cParams; } ;
typedef TYPE_2__ ZSTD_matchState_t ;
typedef int ZSTD_dictMode_e ;
typedef TYPE_3__ ZSTD_compressionParameters ;
typedef int U32 ;
typedef scalar_t__ BYTE ;


 int DEBUGLOG (int,char*,int const,...) ;
 int MAX (int const,int const) ;
 size_t MIN (size_t,size_t) ;
 size_t MINMATCH ;
 int ZSTD_DUBT_UNSORTED_MARK ;
 size_t ZSTD_DUBT_findBetterDictMatch (TYPE_2__*,scalar_t__ const* const,scalar_t__ const* const,size_t*,size_t,int,int const,int const) ;
 int const ZSTD_REP_MOVE ;
 scalar_t__ ZSTD_count (scalar_t__ const* const,scalar_t__ const*,scalar_t__ const* const) ;
 scalar_t__ ZSTD_count_2segments (scalar_t__ const* const,scalar_t__ const*,scalar_t__ const* const,scalar_t__ const* const,scalar_t__ const* const) ;
 int const ZSTD_dictMatchState ;
 int const ZSTD_extDict ;
 int ZSTD_getLowestMatchIndex (TYPE_2__*,int const,int ) ;
 size_t ZSTD_hashPtr (scalar_t__ const* const,int const,int const) ;
 scalar_t__ ZSTD_highbit32 (int) ;
 int ZSTD_insertDUBT1 (TYPE_2__*,int,scalar_t__ const* const,int,int const,int const) ;
 int assert (int) ;

__attribute__((used)) static size_t
ZSTD_DUBT_findBestMatch(ZSTD_matchState_t* ms,
                        const BYTE* const ip, const BYTE* const iend,
                        size_t* offsetPtr,
                        U32 const mls,
                        const ZSTD_dictMode_e dictMode)
{
    const ZSTD_compressionParameters* const cParams = &ms->cParams;
    U32* const hashTable = ms->hashTable;
    U32 const hashLog = cParams->hashLog;
    size_t const h = ZSTD_hashPtr(ip, hashLog, mls);
    U32 matchIndex = hashTable[h];

    const BYTE* const base = ms->window.base;
    U32 const current = (U32)(ip-base);
    U32 const windowLow = ZSTD_getLowestMatchIndex(ms, current, cParams->windowLog);

    U32* const bt = ms->chainTable;
    U32 const btLog = cParams->chainLog - 1;
    U32 const btMask = (1 << btLog) - 1;
    U32 const btLow = (btMask >= current) ? 0 : current - btMask;
    U32 const unsortLimit = MAX(btLow, windowLow);

    U32* nextCandidate = bt + 2*(matchIndex&btMask);
    U32* unsortedMark = bt + 2*(matchIndex&btMask) + 1;
    U32 nbCompares = 1U << cParams->searchLog;
    U32 nbCandidates = nbCompares;
    U32 previousCandidate = 0;

    DEBUGLOG(7, "ZSTD_DUBT_findBestMatch (%u) ", current);
    assert(ip <= iend-8);


    while ( (matchIndex > unsortLimit)
         && (*unsortedMark == ZSTD_DUBT_UNSORTED_MARK)
         && (nbCandidates > 1) ) {
        DEBUGLOG(8, "ZSTD_DUBT_findBestMatch: candidate %u is unsorted",
                    matchIndex);
        *unsortedMark = previousCandidate;
        previousCandidate = matchIndex;
        matchIndex = *nextCandidate;
        nextCandidate = bt + 2*(matchIndex&btMask);
        unsortedMark = bt + 2*(matchIndex&btMask) + 1;
        nbCandidates --;
    }



    if ( (matchIndex > unsortLimit)
      && (*unsortedMark==ZSTD_DUBT_UNSORTED_MARK) ) {
        DEBUGLOG(7, "ZSTD_DUBT_findBestMatch: nullify last unsorted candidate %u",
                    matchIndex);
        *nextCandidate = *unsortedMark = 0;
    }


    matchIndex = previousCandidate;
    while (matchIndex) {
        U32* const nextCandidateIdxPtr = bt + 2*(matchIndex&btMask) + 1;
        U32 const nextCandidateIdx = *nextCandidateIdxPtr;
        ZSTD_insertDUBT1(ms, matchIndex, iend,
                         nbCandidates, unsortLimit, dictMode);
        matchIndex = nextCandidateIdx;
        nbCandidates++;
    }


    { size_t commonLengthSmaller = 0, commonLengthLarger = 0;
        const BYTE* const dictBase = ms->window.dictBase;
        const U32 dictLimit = ms->window.dictLimit;
        const BYTE* const dictEnd = dictBase + dictLimit;
        const BYTE* const prefixStart = base + dictLimit;
        U32* smallerPtr = bt + 2*(current&btMask);
        U32* largerPtr = bt + 2*(current&btMask) + 1;
        U32 matchEndIdx = current + 8 + 1;
        U32 dummy32;
        size_t bestLength = 0;

        matchIndex = hashTable[h];
        hashTable[h] = current;

        while (nbCompares-- && (matchIndex > windowLow)) {
            U32* const nextPtr = bt + 2*(matchIndex & btMask);
            size_t matchLength = MIN(commonLengthSmaller, commonLengthLarger);
            const BYTE* match;

            if ((dictMode != ZSTD_extDict) || (matchIndex+matchLength >= dictLimit)) {
                match = base + matchIndex;
                matchLength += ZSTD_count(ip+matchLength, match+matchLength, iend);
            } else {
                match = dictBase + matchIndex;
                matchLength += ZSTD_count_2segments(ip+matchLength, match+matchLength, iend, dictEnd, prefixStart);
                if (matchIndex+matchLength >= dictLimit)
                    match = base + matchIndex;
            }

            if (matchLength > bestLength) {
                if (matchLength > matchEndIdx - matchIndex)
                    matchEndIdx = matchIndex + (U32)matchLength;
                if ( (4*(int)(matchLength-bestLength)) > (int)(ZSTD_highbit32(current-matchIndex+1) - ZSTD_highbit32((U32)offsetPtr[0]+1)) )
                    bestLength = matchLength, *offsetPtr = ZSTD_REP_MOVE + current - matchIndex;
                if (ip+matchLength == iend) {
                    if (dictMode == ZSTD_dictMatchState) {
                        nbCompares = 0;


                    }
                    break;
                }
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

        if (dictMode == ZSTD_dictMatchState && nbCompares) {
            bestLength = ZSTD_DUBT_findBetterDictMatch(
                    ms, ip, iend,
                    offsetPtr, bestLength, nbCompares,
                    mls, dictMode);
        }

        assert(matchEndIdx > current+8);
        ms->nextToUpdate = matchEndIdx - 8;
        if (bestLength >= MINMATCH) {
            U32 const mIndex = current - ((U32)*offsetPtr - ZSTD_REP_MOVE); (void)mIndex;
            DEBUGLOG(8, "ZSTD_DUBT_findBestMatch(%u) : found match of length %u and offsetCode %u (pos %u)",
                        current, (U32)bestLength, (U32)*offsetPtr, mIndex);
        }
        return bestLength;
    }
}
