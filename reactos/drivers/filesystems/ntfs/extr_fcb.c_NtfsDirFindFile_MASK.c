#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_4__ ;
typedef  struct TYPE_26__   TYPE_3__ ;
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int USHORT ;
struct TYPE_24__ {int Length; } ;
typedef  TYPE_1__ UNICODE_STRING ;
typedef  int /*<<< orphan*/  ULONGLONG ;
struct TYPE_27__ {int Flags; } ;
struct TYPE_26__ {int /*<<< orphan*/  MFTIndex; } ;
struct TYPE_25__ {int /*<<< orphan*/  FileRecLookasideList; } ;
typedef  int* PWSTR ;
typedef  TYPE_2__* PNTFS_VCB ;
typedef  TYPE_3__* PNTFS_FCB ;
typedef  int /*<<< orphan*/  PNTFS_ATTR_CONTEXT ;
typedef  TYPE_4__* PFILE_RECORD_HEADER ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  AttributeData ; 
 int /*<<< orphan*/  FUNC0 (char*,TYPE_2__*,TYPE_3__*,int*,char*,TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_1__*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int FRH_DIRECTORY ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_4__*,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ ,TYPE_4__**,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,TYPE_3__*,TYPE_1__*,int*,TYPE_4__*,int /*<<< orphan*/ ,TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int*) ; 
 int /*<<< orphan*/  STATUS_INVALID_PARAMETER ; 
 int /*<<< orphan*/  STATUS_OBJECT_NAME_NOT_FOUND ; 
 int UNICODE_NULL ; 
 scalar_t__ FUNC9 (int*,char*) ; 
 int /*<<< orphan*/  FUNC10 (int*) ; 
 int* FUNC11 (int*,int) ; 

__attribute__((used)) static NTSTATUS
FUNC12(PNTFS_VCB Vcb,
                PNTFS_FCB DirectoryFcb,
                PWSTR FileToFind,
                BOOLEAN CaseSensitive,
                PNTFS_FCB *FoundFCB)
{
    NTSTATUS Status;
    ULONGLONG CurrentDir;
    UNICODE_STRING File;
    PFILE_RECORD_HEADER FileRecord;
    ULONGLONG MFTIndex;
    PWSTR Colon, OldColon;
    PNTFS_ATTR_CONTEXT DataContext;
    USHORT Length = 0;

    FUNC0("NtfsDirFindFile(%p, %p, %S, %s, %p)\n",
           Vcb,
           DirectoryFcb,
           FileToFind,
           CaseSensitive ? "TRUE" : "FALSE",
           FoundFCB);

    *FoundFCB = NULL;
    FUNC8(&File, FileToFind);
    CurrentDir = DirectoryFcb->MFTIndex;

    Colon = FUNC11(FileToFind, L':');
    if (Colon != NULL)
    {
        Length = File.Length;
        File.Length = (Colon - FileToFind) * sizeof(WCHAR);

        if (FUNC9(Colon + 1, L"$DATA") == 0)
        {
            OldColon = Colon;
            Colon[0] = UNICODE_NULL;
            Colon = FUNC11(FileToFind, L':');
            if (Colon != NULL)
            {
                Length = File.Length;
                File.Length = (Colon - FileToFind) * sizeof(WCHAR);
            }
            else
            {
                Colon = OldColon;
                Colon[0] = L':';
            }
        }

        /* Skip colon */
        ++Colon;
        FUNC1("Will now look for file '%wZ' with stream '%S'\n", &File, Colon);
    }

    Status = FUNC5(Vcb, &File, CaseSensitive, &FileRecord, &MFTIndex, CurrentDir);
    if (!FUNC4(Status))
    {
        return Status;
    }

    if (Length != 0)
    {
        File.Length = Length;
    }

    if ((FileRecord->Flags & FRH_DIRECTORY) && Colon != 0)
    {
        FUNC2(&Vcb->FileRecLookasideList, FileRecord);
        return STATUS_INVALID_PARAMETER;
    }
    else if (Colon != 0)
    {
        Status = FUNC3(Vcb, FileRecord, AttributeData, Colon, FUNC10(Colon), &DataContext, NULL);
        if (!FUNC4(Status))
        {
            return STATUS_OBJECT_NAME_NOT_FOUND;
        }
        FUNC7(DataContext);
    }

    Status = FUNC6(Vcb, DirectoryFcb, &File, Colon, FileRecord, MFTIndex, FoundFCB);
    FUNC2(&Vcb->FileRecLookasideList, FileRecord);

    return Status;
}