
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ ULONG ;
struct TYPE_3__ {int SymbolsCount; scalar_t__ StringsLength; } ;
typedef int ROSSYM_HEADER ;
typedef int ROSSYM_ENTRY ;
typedef TYPE_1__* PROSSYM_INFO ;



ULONG
RosSymGetRawDataLength(PROSSYM_INFO RosSymInfo)
{
  return sizeof(ROSSYM_HEADER)
         + RosSymInfo->SymbolsCount * sizeof(ROSSYM_ENTRY)
         + RosSymInfo->StringsLength;
}
