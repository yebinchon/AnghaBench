
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ ULONG_PTR ;
struct TYPE_6__ {int SymbolsOffset; scalar_t__ StringsOffset; scalar_t__ SymbolsLength; int StringsLength; } ;
struct TYPE_5__ {char* Symbols; int SymbolsCount; char* Strings; int StringsLength; } ;
typedef int ROSSYM_INFO ;
typedef int ROSSYM_HEADER ;
typedef int ROSSYM_ENTRY ;
typedef scalar_t__ PVOID ;
typedef TYPE_1__* PROSSYM_INFO ;
typedef TYPE_2__* PROSSYM_HEADER ;
typedef char* PROSSYM_ENTRY ;
typedef char* PCHAR ;
typedef int BOOLEAN ;


 int DPRINT1 (char*) ;
 int FALSE ;
 TYPE_1__* RosSymAllocMem (int) ;
 int TRUE ;
 int memcpy (char*,char*,int) ;

BOOLEAN
RosSymCreateFromRaw(PVOID RawData, ULONG_PTR DataSize, PROSSYM_INFO *RosSymInfo)
{
  PROSSYM_HEADER RosSymHeader;

  RosSymHeader = (PROSSYM_HEADER) RawData;
  if (RosSymHeader->SymbolsOffset < sizeof(ROSSYM_HEADER)
      || RosSymHeader->StringsOffset < RosSymHeader->SymbolsOffset + RosSymHeader->SymbolsLength
      || DataSize < RosSymHeader->StringsOffset + RosSymHeader->StringsLength
      || 0 != (RosSymHeader->SymbolsLength % sizeof(ROSSYM_ENTRY)))
    {
      DPRINT1("Invalid ROSSYM_HEADER\n");
      return FALSE;
    }


  *RosSymInfo = RosSymAllocMem(sizeof(ROSSYM_INFO) + RosSymHeader->SymbolsLength
                               + RosSymHeader->StringsLength + 1);
  if (((void*)0) == *RosSymInfo)
    {
      DPRINT1("Failed to allocate memory for rossym\n");
      return FALSE;
    }
  (*RosSymInfo)->Symbols = (PROSSYM_ENTRY)((char *) *RosSymInfo + sizeof(ROSSYM_INFO));
  (*RosSymInfo)->SymbolsCount = RosSymHeader->SymbolsLength / sizeof(ROSSYM_ENTRY);
  (*RosSymInfo)->Strings = (PCHAR) *RosSymInfo + sizeof(ROSSYM_INFO) + RosSymHeader->SymbolsLength;
  (*RosSymInfo)->StringsLength = RosSymHeader->StringsLength;
  memcpy((*RosSymInfo)->Symbols, (char *) RosSymHeader + RosSymHeader->SymbolsOffset,
         RosSymHeader->SymbolsLength);
  memcpy((*RosSymInfo)->Strings, (char *) RosSymHeader + RosSymHeader->StringsOffset,
         RosSymHeader->StringsLength);

  (*RosSymInfo)->Strings[(*RosSymInfo)->StringsLength] = '\0';

  return TRUE;
}
