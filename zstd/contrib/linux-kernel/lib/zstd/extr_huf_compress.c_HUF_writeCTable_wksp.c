
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int U32 ;
struct TYPE_3__ {size_t nbBits; } ;
typedef TYPE_1__ HUF_CElt ;
typedef int BYTE ;


 int ALIGN (int,int) ;
 int CHECK_V_F (int,int ) ;
 size_t ERROR (int ) ;
 int GENERIC ;
 int HUF_SYMBOLVALUE_MAX ;
 int HUF_TABLELOG_MAX ;
 int HUF_compressWeights_wksp (int*,size_t,int*,int,void*,size_t) ;
 int dstSize_tooSmall ;
 int hSize ;
 int maxSymbolValue_tooLarge ;
 int tableLog_tooLarge ;

size_t HUF_writeCTable_wksp(void *dst, size_t maxDstSize, const HUF_CElt *CTable, U32 maxSymbolValue, U32 huffLog, void *workspace, size_t workspaceSize)
{
 BYTE *op = (BYTE *)dst;
 U32 n;

 BYTE *bitsToWeight;
 BYTE *huffWeight;
 size_t spaceUsed32 = 0;

 bitsToWeight = (BYTE *)((U32 *)workspace + spaceUsed32);
 spaceUsed32 += ALIGN(HUF_TABLELOG_MAX + 1, sizeof(U32)) >> 2;
 huffWeight = (BYTE *)((U32 *)workspace + spaceUsed32);
 spaceUsed32 += ALIGN(HUF_SYMBOLVALUE_MAX, sizeof(U32)) >> 2;

 if ((spaceUsed32 << 2) > workspaceSize)
  return ERROR(tableLog_tooLarge);
 workspace = (U32 *)workspace + spaceUsed32;
 workspaceSize -= (spaceUsed32 << 2);


 if (maxSymbolValue > HUF_SYMBOLVALUE_MAX)
  return ERROR(maxSymbolValue_tooLarge);


 bitsToWeight[0] = 0;
 for (n = 1; n < huffLog + 1; n++)
  bitsToWeight[n] = (BYTE)(huffLog + 1 - n);
 for (n = 0; n < maxSymbolValue; n++)
  huffWeight[n] = bitsToWeight[CTable[n].nbBits];


 {
  CHECK_V_F(hSize, HUF_compressWeights_wksp(op + 1, maxDstSize - 1, huffWeight, maxSymbolValue, workspace, workspaceSize));
  if ((hSize > 1) & (hSize < maxSymbolValue / 2)) {
   op[0] = (BYTE)hSize;
   return hSize + 1;
  }
 }


 if (maxSymbolValue > (256 - 128))
  return ERROR(GENERIC);
 if (((maxSymbolValue + 1) / 2) + 1 > maxDstSize)
  return ERROR(dstSize_tooSmall);
 op[0] = (BYTE)(128 + (maxSymbolValue - 1));
 huffWeight[maxSymbolValue] = 0;
 for (n = 0; n < maxSymbolValue; n += 2)
  op[(n / 2) + 1] = (BYTE)((huffWeight[n] << 4) + huffWeight[n + 1]);
 return ((maxSymbolValue + 1) / 2) + 1;
}
