
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ULONG_PTR ;
typedef int ULONG ;
struct TYPE_7__ {scalar_t__ FileOffset; scalar_t__ FunctionOffset; int SourceLine; } ;
struct TYPE_6__ {scalar_t__ SymbolsCount; scalar_t__ StringsLength; int * Strings; int * Symbols; } ;
typedef TYPE_1__* PROSSYM_INFO ;
typedef TYPE_2__* PROSSYM_ENTRY ;
typedef char* PCSTR ;
typedef char* PCHAR ;
typedef int BOOLEAN ;


 int ASSERT (int ) ;
 int DPRINT (char*,...) ;
 int DPRINT1 (char*) ;
 int FALSE ;
 TYPE_2__* FindEntry (TYPE_1__*,int ) ;
 int TRUE ;
 int strcpy (char*,char*) ;

BOOLEAN
RosSymGetAddressInformation(PROSSYM_INFO RosSymInfo,
                            ULONG_PTR RelativeAddress,
                            ULONG *LineNumber,
                            char *FileName,
                            char *FunctionName)
{
  PROSSYM_ENTRY RosSymEntry;

  DPRINT("RelativeAddress = 0x%08x\n", RelativeAddress);

  if (RosSymInfo->Symbols == ((void*)0) || RosSymInfo->SymbolsCount == 0 ||
      RosSymInfo->Strings == ((void*)0) || RosSymInfo->StringsLength == 0)
    {
      DPRINT1("Uninitialized RosSymInfo\n");
      return FALSE;
    }

  ASSERT(LineNumber || FileName || FunctionName);


  RosSymEntry = FindEntry(RosSymInfo, RelativeAddress);

  if (((void*)0) == RosSymEntry)
    {
      DPRINT("None of the requested information was found!\n");
      return FALSE;
    }

  if (LineNumber != ((void*)0))
    {
      *LineNumber = RosSymEntry->SourceLine;
    }
  if (FileName != ((void*)0))
    {
      PCSTR Name = "";
      if (RosSymEntry->FileOffset != 0)
        {
          Name = (PCHAR) RosSymInfo->Strings + RosSymEntry->FileOffset;
        }
      strcpy(FileName, Name);
    }
  if (FunctionName != ((void*)0))
    {
      PCSTR Name = "";
      if (RosSymEntry->FunctionOffset != 0)
        {
          Name = (PCHAR) RosSymInfo->Strings + RosSymEntry->FunctionOffset;
        }
      strcpy(FunctionName, Name);
    }

  return TRUE;
}
