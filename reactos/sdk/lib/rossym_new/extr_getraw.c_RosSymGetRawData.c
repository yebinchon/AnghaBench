
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_5__ {int SymbolsOffset; int SymbolsLength; int StringsOffset; int StringsLength; } ;
struct TYPE_4__ {int SymbolsCount; int StringsLength; int Strings; int Symbols; } ;
typedef int ROSSYM_HEADER ;
typedef int ROSSYM_ENTRY ;
typedef scalar_t__ PVOID ;
typedef TYPE_1__* PROSSYM_INFO ;
typedef TYPE_2__* PROSSYM_HEADER ;


 int memcpy (char*,int ,int) ;

VOID
RosSymGetRawData(PROSSYM_INFO RosSymInfo, PVOID RawData)
{
  PROSSYM_HEADER RosSymHeader;

  RosSymHeader = (PROSSYM_HEADER) RawData;
  RosSymHeader->SymbolsOffset = sizeof(ROSSYM_HEADER);
  RosSymHeader->SymbolsLength = RosSymInfo->SymbolsCount * sizeof(ROSSYM_ENTRY);
  RosSymHeader->StringsOffset = RosSymHeader->SymbolsOffset + RosSymHeader->SymbolsLength;
  RosSymHeader->StringsLength = RosSymInfo->StringsLength;

  memcpy((char *) RawData + RosSymHeader->SymbolsOffset, RosSymInfo->Symbols,
         RosSymHeader->SymbolsLength);
  memcpy((char *) RawData + RosSymHeader->StringsOffset, RosSymInfo->Strings,
         RosSymHeader->StringsLength);
}
