#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_15__ {int Length; int MaximumLength; int /*<<< orphan*/  Buffer; } ;
typedef  TYPE_2__ UNICODE_STRING ;
struct TYPE_14__ {int NameLength; int /*<<< orphan*/  Name; } ;
struct TYPE_16__ {TYPE_1__ FileName; } ;
typedef  TYPE_2__* PUNICODE_STRING ;
typedef  TYPE_4__* PINDEX_ENTRY_ATTRIBUTE ;
typedef  int BOOLEAN ;

/* Variables and functions */
 int FALSE ; 
 int FUNC0 (TYPE_2__*,TYPE_2__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_2__*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,TYPE_2__*,int) ; 
 int TRUE ; 

BOOLEAN
FUNC6(PUNICODE_STRING FileName,
                PINDEX_ENTRY_ATTRIBUTE IndexEntry,
                BOOLEAN DirSearch,
                BOOLEAN CaseSensitive)
{
    BOOLEAN Ret, Alloc = FALSE;
    UNICODE_STRING EntryName;

    EntryName.Buffer = IndexEntry->FileName.Name;
    EntryName.Length = 
    EntryName.MaximumLength = IndexEntry->FileName.NameLength * sizeof(WCHAR);

    if (DirSearch)
    {
        UNICODE_STRING IntFileName;
        if (!CaseSensitive)
        {
            FUNC2(FUNC1(FUNC5(&IntFileName, FileName, TRUE)));
            Alloc = TRUE;
        }
        else
        {
            IntFileName = *FileName;
        }

        Ret = FUNC0(&IntFileName, &EntryName, !CaseSensitive, NULL);

        if (Alloc)
        {
            FUNC4(&IntFileName);
        }

        return Ret;
    }
    else
    {
        return (FUNC3(FileName, &EntryName, !CaseSensitive) == 0);
    }
}