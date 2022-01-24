#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ULONG_PTR ;
typedef  int /*<<< orphan*/  ULONG ;
struct TYPE_7__ {scalar_t__ FileOffset; scalar_t__ FunctionOffset; int /*<<< orphan*/  SourceLine; } ;
struct TYPE_6__ {scalar_t__ SymbolsCount; scalar_t__ StringsLength; int /*<<< orphan*/ * Strings; int /*<<< orphan*/ * Symbols; } ;
typedef  TYPE_1__* PROSSYM_INFO ;
typedef  TYPE_2__* PROSSYM_ENTRY ;
typedef  char* PCSTR ;
typedef  char* PCHAR ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FALSE ; 
 TYPE_2__* FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 

BOOLEAN
FUNC5(PROSSYM_INFO RosSymInfo,
                            ULONG_PTR RelativeAddress,
                            ULONG *LineNumber,
                            char *FileName,
                            char *FunctionName)
{
  PROSSYM_ENTRY RosSymEntry;

  FUNC1("RelativeAddress = 0x%08x\n", RelativeAddress);

  if (RosSymInfo->Symbols == NULL || RosSymInfo->SymbolsCount == 0 ||
      RosSymInfo->Strings == NULL || RosSymInfo->StringsLength == 0)
    {
      FUNC2("Uninitialized RosSymInfo\n");
      return FALSE;
    }

  FUNC0(LineNumber || FileName || FunctionName);

  /* find symbol entry for function */
  RosSymEntry = FUNC3(RosSymInfo, RelativeAddress);

  if (NULL == RosSymEntry)
    {
      FUNC1("None of the requested information was found!\n");
      return FALSE;
    }

  if (LineNumber != NULL)
    {
      *LineNumber = RosSymEntry->SourceLine;
    }
  if (FileName != NULL)
    {
      PCSTR Name = "";
      if (RosSymEntry->FileOffset != 0)
        {
          Name = (PCHAR) RosSymInfo->Strings + RosSymEntry->FileOffset;
        }
      FUNC4(FileName, Name);
    }
  if (FunctionName != NULL)
    {
      PCSTR Name = "";
      if (RosSymEntry->FunctionOffset != 0)
        {
          Name = (PCHAR) RosSymInfo->Strings + RosSymEntry->FunctionOffset;
        }
      FUNC4(FunctionName, Name);
    }

  return TRUE;
}