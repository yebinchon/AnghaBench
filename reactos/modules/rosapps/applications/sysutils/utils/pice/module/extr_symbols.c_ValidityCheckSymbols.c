
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ ULONG ;
struct TYPE_3__ {int ulSizeOfStabsStrings; scalar_t__ ulOffsetToStabsStrings; int ulSizeOfStabs; scalar_t__ ulOffsetToStabs; int ulSizeOfGlobalsStrings; scalar_t__ ulOffsetToGlobalsStrings; int ulSizeOfGlobals; scalar_t__ ulOffsetToGlobals; int ulSizeOfHeader; scalar_t__ ulOffsetToHeaders; } ;
typedef TYPE_1__ PICE_SYMBOLFILE_HEADER ;
typedef int BOOLEAN ;


 int DPRINT (int ) ;
 scalar_t__ IsRangeValid (scalar_t__,int ) ;

BOOLEAN ValidityCheckSymbols(PICE_SYMBOLFILE_HEADER* pSymbols)
{
 BOOLEAN bRet;

    DPRINT((0,"ValidityCheckSymbols()\n"));

 bRet = (IsRangeValid((ULONG)pSymbols + pSymbols->ulOffsetToHeaders,pSymbols->ulSizeOfHeader) &&
      IsRangeValid((ULONG)pSymbols + pSymbols->ulOffsetToGlobals,pSymbols->ulSizeOfGlobals) &&
      IsRangeValid((ULONG)pSymbols + pSymbols->ulOffsetToGlobalsStrings,pSymbols->ulSizeOfGlobalsStrings) &&
      IsRangeValid((ULONG)pSymbols + pSymbols->ulOffsetToStabs,pSymbols->ulSizeOfStabs) &&
      IsRangeValid((ULONG)pSymbols + pSymbols->ulOffsetToStabsStrings,pSymbols->ulSizeOfStabsStrings));

    DPRINT((0,"ValidityCheckSymbols(): symbols are %s\n",bRet?"VALID":"NOT VALID"));

 return bRet;
}
