
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int U32 ;
typedef scalar_t__ U16 ;
struct TYPE_2__ {unsigned int deltaNbBits; unsigned int deltaFindState; } ;
typedef TYPE_1__ FSE_symbolCompressionTransform ;
typedef size_t FSE_FUNCTION_TYPE ;
typedef int FSE_CTable ;


 int ALIGN (int,int) ;
 unsigned int BIT_highbit32 (short const) ;
 size_t ERROR (int ) ;
 scalar_t__ FSE_MAX_SYMBOL_VALUE ;
 int FSE_TABLESTEP (int const) ;
 int GENERIC ;
 int tableLog_tooLarge ;

size_t FSE_buildCTable_wksp(FSE_CTable *ct, const short *normalizedCounter, unsigned maxSymbolValue, unsigned tableLog, void *workspace, size_t workspaceSize)
{
 U32 const tableSize = 1 << tableLog;
 U32 const tableMask = tableSize - 1;
 void *const ptr = ct;
 U16 *const tableU16 = ((U16 *)ptr) + 2;
 void *const FSCT = ((U32 *)ptr) + 1 + (tableLog ? tableSize >> 1 : 1);
 FSE_symbolCompressionTransform *const symbolTT = (FSE_symbolCompressionTransform *)(FSCT);
 U32 const step = FSE_TABLESTEP(tableSize);
 U32 highThreshold = tableSize - 1;

 U32 *cumul;
 FSE_FUNCTION_TYPE *tableSymbol;
 size_t spaceUsed32 = 0;

 cumul = (U32 *)workspace + spaceUsed32;
 spaceUsed32 += FSE_MAX_SYMBOL_VALUE + 2;
 tableSymbol = (FSE_FUNCTION_TYPE *)((U32 *)workspace + spaceUsed32);
 spaceUsed32 += ALIGN(sizeof(FSE_FUNCTION_TYPE) * ((size_t)1 << tableLog), sizeof(U32)) >> 2;

 if ((spaceUsed32 << 2) > workspaceSize)
  return ERROR(tableLog_tooLarge);
 workspace = (U32 *)workspace + spaceUsed32;
 workspaceSize -= (spaceUsed32 << 2);


 tableU16[-2] = (U16)tableLog;
 tableU16[-1] = (U16)maxSymbolValue;





 {
  U32 u;
  cumul[0] = 0;
  for (u = 1; u <= maxSymbolValue + 1; u++) {
   if (normalizedCounter[u - 1] == -1) {
    cumul[u] = cumul[u - 1] + 1;
    tableSymbol[highThreshold--] = (FSE_FUNCTION_TYPE)(u - 1);
   } else {
    cumul[u] = cumul[u - 1] + normalizedCounter[u - 1];
   }
  }
  cumul[maxSymbolValue + 1] = tableSize + 1;
 }


 {
  U32 position = 0;
  U32 symbol;
  for (symbol = 0; symbol <= maxSymbolValue; symbol++) {
   int nbOccurrences;
   for (nbOccurrences = 0; nbOccurrences < normalizedCounter[symbol]; nbOccurrences++) {
    tableSymbol[position] = (FSE_FUNCTION_TYPE)symbol;
    position = (position + step) & tableMask;
    while (position > highThreshold)
     position = (position + step) & tableMask;
   }
  }

  if (position != 0)
   return ERROR(GENERIC);
 }


 {
  U32 u;
  for (u = 0; u < tableSize; u++) {
   FSE_FUNCTION_TYPE s = tableSymbol[u];
   tableU16[cumul[s]++] = (U16)(tableSize + u);
  }
 }


 {
  unsigned total = 0;
  unsigned s;
  for (s = 0; s <= maxSymbolValue; s++) {
   switch (normalizedCounter[s]) {
   case 0: break;

   case -1:
   case 1:
    symbolTT[s].deltaNbBits = (tableLog << 16) - (1 << tableLog);
    symbolTT[s].deltaFindState = total - 1;
    total++;
    break;
   default: {
    U32 const maxBitsOut = tableLog - BIT_highbit32(normalizedCounter[s] - 1);
    U32 const minStatePlus = normalizedCounter[s] << maxBitsOut;
    symbolTT[s].deltaNbBits = (maxBitsOut << 16) - minStatePlus;
    symbolTT[s].deltaFindState = total - normalizedCounter[s];
    total += normalizedCounter[s];
   }
   }
  }
 }

 return 0;
}
