
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UInt64 ;
typedef int UInt32 ;
typedef int SRes ;
typedef int ISzAlloc ;
typedef int CSzData ;
typedef int CSzArEx ;
typedef int Byte ;


 int IAlloc_Free (int *,int *) ;
 int SzReadHeader2 (int *,int *,int **,int **,int **,int **,int **,int **,int *,int *) ;

__attribute__((used)) static SRes SzReadHeader(
    CSzArEx *p,
    CSzData *sd,
    ISzAlloc *allocMain,
    ISzAlloc *allocTemp)
{
  UInt64 *unpackSizes = 0;
  Byte *digestsDefined = 0;
  UInt32 *digests = 0;
  Byte *emptyStreamVector = 0;
  Byte *emptyFileVector = 0;
  Byte *lwtVector = 0;
  SRes res = SzReadHeader2(p, sd,
      &unpackSizes, &digestsDefined, &digests,
      &emptyStreamVector, &emptyFileVector, &lwtVector,
      allocMain, allocTemp);
  IAlloc_Free(allocTemp, unpackSizes);
  IAlloc_Free(allocTemp, digestsDefined);
  IAlloc_Free(allocTemp, digests);
  IAlloc_Free(allocTemp, emptyStreamVector);
  IAlloc_Free(allocTemp, emptyFileVector);
  IAlloc_Free(allocTemp, lwtVector);
  return res;
}
