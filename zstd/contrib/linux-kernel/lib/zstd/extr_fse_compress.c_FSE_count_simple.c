
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int U32 ;
typedef int BYTE ;


 int memset (unsigned int*,int ,unsigned int) ;

size_t FSE_count_simple(unsigned *count, unsigned *maxSymbolValuePtr, const void *src, size_t srcSize)
{
 const BYTE *ip = (const BYTE *)src;
 const BYTE *const end = ip + srcSize;
 unsigned maxSymbolValue = *maxSymbolValuePtr;
 unsigned max = 0;

 memset(count, 0, (maxSymbolValue + 1) * sizeof(*count));
 if (srcSize == 0) {
  *maxSymbolValuePtr = 0;
  return 0;
 }

 while (ip < end)
  count[*ip++]++;

 while (!count[maxSymbolValue])
  maxSymbolValue--;
 *maxSymbolValuePtr = maxSymbolValue;

 {
  U32 s;
  for (s = 0; s <= maxSymbolValue; s++)
   if (count[s] > max)
    max = count[s];
 }

 return (size_t)max;
}
