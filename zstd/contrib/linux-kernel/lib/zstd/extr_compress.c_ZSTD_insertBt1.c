
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int hashLog; int chainLog; } ;
struct TYPE_6__ {TYPE_1__ cParams; } ;
struct TYPE_7__ {int* hashTable; int* chainTable; scalar_t__* base; scalar_t__* dictBase; int dictLimit; int lowLimit; TYPE_2__ params; } ;
typedef TYPE_3__ ZSTD_CCtx ;
typedef int U32 ;
typedef scalar_t__ BYTE ;


 int MIN (int,int) ;
 scalar_t__ ZSTD_count (scalar_t__ const* const,scalar_t__ const*,scalar_t__ const* const) ;
 scalar_t__ ZSTD_count_2segments (scalar_t__ const* const,scalar_t__ const*,scalar_t__ const* const,scalar_t__ const* const,scalar_t__ const* const) ;
 size_t ZSTD_hashPtr (scalar_t__ const* const,int const,int const) ;

__attribute__((used)) static U32 ZSTD_insertBt1(ZSTD_CCtx *zc, const BYTE *const ip, const U32 mls, const BYTE *const iend, U32 nbCompares, U32 extDict)
{
 U32 *const hashTable = zc->hashTable;
 U32 const hashLog = zc->params.cParams.hashLog;
 size_t const h = ZSTD_hashPtr(ip, hashLog, mls);
 U32 *const bt = zc->chainTable;
 U32 const btLog = zc->params.cParams.chainLog - 1;
 U32 const btMask = (1 << btLog) - 1;
 U32 matchIndex = hashTable[h];
 size_t commonLengthSmaller = 0, commonLengthLarger = 0;
 const BYTE *const base = zc->base;
 const BYTE *const dictBase = zc->dictBase;
 const U32 dictLimit = zc->dictLimit;
 const BYTE *const dictEnd = dictBase + dictLimit;
 const BYTE *const prefixStart = base + dictLimit;
 const BYTE *match;
 const U32 curr = (U32)(ip - base);
 const U32 btLow = btMask >= curr ? 0 : curr - btMask;
 U32 *smallerPtr = bt + 2 * (curr & btMask);
 U32 *largerPtr = smallerPtr + 1;
 U32 dummy32;
 U32 const windowLow = zc->lowLimit;
 U32 matchEndIdx = curr + 8;
 size_t bestLength = 8;

 hashTable[h] = curr;

 while (nbCompares-- && (matchIndex > windowLow)) {
  U32 *const nextPtr = bt + 2 * (matchIndex & btMask);
  size_t matchLength = MIN(commonLengthSmaller, commonLengthLarger);

  if ((!extDict) || (matchIndex + matchLength >= dictLimit)) {
   match = base + matchIndex;
   if (match[matchLength] == ip[matchLength])
    matchLength += ZSTD_count(ip + matchLength + 1, match + matchLength + 1, iend) + 1;
  } else {
   match = dictBase + matchIndex;
   matchLength += ZSTD_count_2segments(ip + matchLength, match + matchLength, iend, dictEnd, prefixStart);
   if (matchIndex + matchLength >= dictLimit)
    match = base + matchIndex;
  }

  if (matchLength > bestLength) {
   bestLength = matchLength;
   if (matchLength > matchEndIdx - matchIndex)
    matchEndIdx = matchIndex + (U32)matchLength;
  }

  if (ip + matchLength == iend)
   break;

  if (match[matchLength] < ip[matchLength]) {

   *smallerPtr = matchIndex;
   commonLengthSmaller = matchLength;
   if (matchIndex <= btLow) {
    smallerPtr = &dummy32;
    break;
   }
   smallerPtr = nextPtr + 1;
   matchIndex = nextPtr[1];
  } else {

   *largerPtr = matchIndex;
   commonLengthLarger = matchLength;
   if (matchIndex <= btLow) {
    largerPtr = &dummy32;
    break;
   }
   largerPtr = nextPtr;
   matchIndex = nextPtr[0];
  }
 }

 *smallerPtr = *largerPtr = 0;
 if (bestLength > 384)
  return MIN(192, (U32)(bestLength - 384));
 if (matchEndIdx > curr + 8)
  return matchEndIdx - curr - 8;
 return 1;
}
