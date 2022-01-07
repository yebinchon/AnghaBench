
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U64 ;
typedef size_t U32 ;


 size_t ERROR (int ) ;
 int GENERIC ;
 int div_u64 (int const,size_t) ;

__attribute__((used)) static size_t FSE_normalizeM2(short *norm, U32 tableLog, const unsigned *count, size_t total, U32 maxSymbolValue)
{
 short const NOT_YET_ASSIGNED = -2;
 U32 s;
 U32 distributed = 0;
 U32 ToDistribute;


 U32 const lowThreshold = (U32)(total >> tableLog);
 U32 lowOne = (U32)((total * 3) >> (tableLog + 1));

 for (s = 0; s <= maxSymbolValue; s++) {
  if (count[s] == 0) {
   norm[s] = 0;
   continue;
  }
  if (count[s] <= lowThreshold) {
   norm[s] = -1;
   distributed++;
   total -= count[s];
   continue;
  }
  if (count[s] <= lowOne) {
   norm[s] = 1;
   distributed++;
   total -= count[s];
   continue;
  }

  norm[s] = NOT_YET_ASSIGNED;
 }
 ToDistribute = (1 << tableLog) - distributed;

 if ((total / ToDistribute) > lowOne) {

  lowOne = (U32)((total * 3) / (ToDistribute * 2));
  for (s = 0; s <= maxSymbolValue; s++) {
   if ((norm[s] == NOT_YET_ASSIGNED) && (count[s] <= lowOne)) {
    norm[s] = 1;
    distributed++;
    total -= count[s];
    continue;
   }
  }
  ToDistribute = (1 << tableLog) - distributed;
 }

 if (distributed == maxSymbolValue + 1) {



  U32 maxV = 0, maxC = 0;
  for (s = 0; s <= maxSymbolValue; s++)
   if (count[s] > maxC)
    maxV = s, maxC = count[s];
  norm[maxV] += (short)ToDistribute;
  return 0;
 }

 if (total == 0) {

  for (s = 0; ToDistribute > 0; s = (s + 1) % (maxSymbolValue + 1))
   if (norm[s] > 0)
    ToDistribute--, norm[s]++;
  return 0;
 }

 {
  U64 const vStepLog = 62 - tableLog;
  U64 const mid = (1ULL << (vStepLog - 1)) - 1;
  U64 const rStep = div_u64((((U64)1 << vStepLog) * ToDistribute) + mid, (U32)total);
  U64 tmpTotal = mid;
  for (s = 0; s <= maxSymbolValue; s++) {
   if (norm[s] == NOT_YET_ASSIGNED) {
    U64 const end = tmpTotal + (count[s] * rStep);
    U32 const sStart = (U32)(tmpTotal >> vStepLog);
    U32 const sEnd = (U32)(end >> vStepLog);
    U32 const weight = sEnd - sStart;
    if (weight < 1)
     return ERROR(GENERIC);
    norm[s] = (short)weight;
    tmpTotal = end;
   }
  }
 }

 return 0;
}
