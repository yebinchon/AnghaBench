#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int size; scalar_t__ capacity; TYPE_2__* seq; } ;
typedef  TYPE_1__ rawSeqStore_t ;
struct TYPE_18__ {int litLength; int matchLength; int offset; } ;
typedef  TYPE_2__ rawSeq ;
struct TYPE_22__ {int dictLimit; int const lowLimit; int /*<<< orphan*/ * dictBase; int /*<<< orphan*/ * base; } ;
struct TYPE_19__ {TYPE_6__ window; int /*<<< orphan*/  hashPower; } ;
typedef  TYPE_3__ ldmState_t ;
struct TYPE_20__ {int minMatchLength; int hashLog; unsigned int bucketSizeLog; int hashEveryLog; } ;
typedef  TYPE_4__ ldmParams_t ;
struct TYPE_21__ {int const checksum; int const offset; } ;
typedef  TYPE_5__ ldmEntry_t ;
typedef  int /*<<< orphan*/  U64 ;
typedef  int U32 ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HASH_READ_SIZE ; 
 int /*<<< orphan*/  const* const FUNC1 (int const,int /*<<< orphan*/ ) ; 
 size_t FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const* const,int /*<<< orphan*/  const* const) ; 
 size_t FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const* const,int /*<<< orphan*/  const* const,int /*<<< orphan*/  const* const,int /*<<< orphan*/  const* const) ; 
 size_t FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const* const,int /*<<< orphan*/  const* const) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const* const,int const,TYPE_4__ const) ; 
 TYPE_5__* FUNC6 (TYPE_3__*,int /*<<< orphan*/ ,TYPE_4__ const) ; 
 int FUNC7 (int /*<<< orphan*/ ,int const) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/  const*,int const) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int const) ; 
 int const FUNC10 (int /*<<< orphan*/ ,int const,int const) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,int /*<<< orphan*/ ,int const,int const,TYPE_4__ const) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/  const,int /*<<< orphan*/  const,int /*<<< orphan*/  const) ; 
 int FUNC13 (TYPE_6__) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  dstSize_tooSmall ; 

__attribute__((used)) static size_t FUNC15(
        ldmState_t* ldmState, rawSeqStore_t* rawSeqStore,
        ldmParams_t const* params, void const* src, size_t srcSize)
{
    /* LDM parameters */
    int const extDict = FUNC13(ldmState->window);
    U32 const minMatchLength = params->minMatchLength;
    U64 const hashPower = ldmState->hashPower;
    U32 const hBits = params->hashLog - params->bucketSizeLog;
    U32 const ldmBucketSize = 1U << params->bucketSizeLog;
    U32 const hashEveryLog = params->hashEveryLog;
    U32 const ldmTagMask = (1U << params->hashEveryLog) - 1;
    /* Prefix and extDict parameters */
    U32 const dictLimit = ldmState->window.dictLimit;
    U32 const lowestIndex = extDict ? ldmState->window.lowLimit : dictLimit;
    BYTE const* const base = ldmState->window.base;
    BYTE const* const dictBase = extDict ? ldmState->window.dictBase : NULL;
    BYTE const* const dictStart = extDict ? dictBase + lowestIndex : NULL;
    BYTE const* const dictEnd = extDict ? dictBase + dictLimit : NULL;
    BYTE const* const lowPrefixPtr = base + dictLimit;
    /* Input bounds */
    BYTE const* const istart = (BYTE const*)src;
    BYTE const* const iend = istart + srcSize;
    BYTE const* const ilimit = iend - FUNC1(minMatchLength, HASH_READ_SIZE);
    /* Input positions */
    BYTE const* anchor = istart;
    BYTE const* ip = istart;
    /* Rolling hash */
    BYTE const* lastHashed = NULL;
    U64 rollingHash = 0;

    while (ip <= ilimit) {
        size_t mLength;
        U32 const current = (U32)(ip - base);
        size_t forwardMatchLength = 0, backwardMatchLength = 0;
        ldmEntry_t* bestEntry = NULL;
        if (ip != istart) {
            rollingHash = FUNC12(rollingHash, lastHashed[0],
                                              lastHashed[minMatchLength],
                                              hashPower);
        } else {
            rollingHash = FUNC8(ip, minMatchLength);
        }
        lastHashed = ip;

        /* Do not insert and do not look for a match */
        if (FUNC10(rollingHash, hBits, hashEveryLog) != ldmTagMask) {
           ip++;
           continue;
        }

        /* Get the best entry and compute the match lengths */
        {
            ldmEntry_t* const bucket =
                FUNC6(ldmState,
                                   FUNC9(rollingHash, hBits),
                                   *params);
            ldmEntry_t* cur;
            size_t bestMatchLength = 0;
            U32 const checksum = FUNC7(rollingHash, hBits);

            for (cur = bucket; cur < bucket + ldmBucketSize; ++cur) {
                size_t curForwardMatchLength, curBackwardMatchLength,
                       curTotalMatchLength;
                if (cur->checksum != checksum || cur->offset <= lowestIndex) {
                    continue;
                }
                if (extDict) {
                    BYTE const* const curMatchBase =
                        cur->offset < dictLimit ? dictBase : base;
                    BYTE const* const pMatch = curMatchBase + cur->offset;
                    BYTE const* const matchEnd =
                        cur->offset < dictLimit ? dictEnd : iend;
                    BYTE const* const lowMatchPtr =
                        cur->offset < dictLimit ? dictStart : lowPrefixPtr;

                    curForwardMatchLength = FUNC3(
                                                ip, pMatch, iend,
                                                matchEnd, lowPrefixPtr);
                    if (curForwardMatchLength < minMatchLength) {
                        continue;
                    }
                    curBackwardMatchLength =
                        FUNC4(ip, anchor, pMatch,
                                                     lowMatchPtr);
                    curTotalMatchLength = curForwardMatchLength +
                                          curBackwardMatchLength;
                } else { /* !extDict */
                    BYTE const* const pMatch = base + cur->offset;
                    curForwardMatchLength = FUNC2(ip, pMatch, iend);
                    if (curForwardMatchLength < minMatchLength) {
                        continue;
                    }
                    curBackwardMatchLength =
                        FUNC4(ip, anchor, pMatch,
                                                     lowPrefixPtr);
                    curTotalMatchLength = curForwardMatchLength +
                                          curBackwardMatchLength;
                }

                if (curTotalMatchLength > bestMatchLength) {
                    bestMatchLength = curTotalMatchLength;
                    forwardMatchLength = curForwardMatchLength;
                    backwardMatchLength = curBackwardMatchLength;
                    bestEntry = cur;
                }
            }
        }

        /* No match found -- continue searching */
        if (bestEntry == NULL) {
            FUNC11(ldmState, rollingHash,
                                             hBits, current,
                                             *params);
            ip++;
            continue;
        }

        /* Match found */
        mLength = forwardMatchLength + backwardMatchLength;
        ip -= backwardMatchLength;

        {
            /* Store the sequence:
             * ip = current - backwardMatchLength
             * The match is at (bestEntry->offset - backwardMatchLength)
             */
            U32 const matchIndex = bestEntry->offset;
            U32 const offset = current - matchIndex;
            rawSeq* const seq = rawSeqStore->seq + rawSeqStore->size;

            /* Out of sequence storage */
            if (rawSeqStore->size == rawSeqStore->capacity)
                return FUNC0(dstSize_tooSmall);
            seq->litLength = (U32)(ip - anchor);
            seq->matchLength = (U32)mLength;
            seq->offset = offset;
            rawSeqStore->size++;
        }

        /* Insert the current entry into the hash table */
        FUNC11(ldmState, rollingHash, hBits,
                                         (U32)(lastHashed - base),
                                         *params);

        FUNC14(ip + backwardMatchLength == lastHashed);

        /* Fill the hash table from lastHashed+1 to ip+mLength*/
        /* Heuristic: don't need to fill the entire table at end of block */
        if (ip + mLength <= ilimit) {
            rollingHash = FUNC5(
                              ldmState, rollingHash, lastHashed,
                              ip + mLength, base, hBits, *params);
            lastHashed = ip + mLength - 1;
        }
        ip += mLength;
        anchor = ip;
    }
    return iend - anchor;
}