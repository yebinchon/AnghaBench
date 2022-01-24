#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_29__   TYPE_9__ ;
typedef  struct TYPE_28__   TYPE_3__ ;
typedef  struct TYPE_27__   TYPE_2__ ;
typedef  struct TYPE_26__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int USHORT ;
struct TYPE_26__ {int* Buffer; int Length; int MaximumLength; } ;
typedef  TYPE_1__ UNICODE_STRING ;
typedef  scalar_t__ ULONG ;
struct TYPE_29__ {int Flags; } ;
struct TYPE_28__ {int /*<<< orphan*/  entry; int /*<<< orphan*/  PathNameU; scalar_t__ dirIndex; scalar_t__ startIndex; int /*<<< orphan*/  ShortNameU; int /*<<< orphan*/  LongNameU; } ;
struct TYPE_27__ {scalar_t__ DirIndex; TYPE_1__ LongNameU; int /*<<< orphan*/  DirEntry; TYPE_1__ ShortNameU; scalar_t__ StartIndex; } ;
typedef  int* PWCHAR ;
typedef  int /*<<< orphan*/ * PVOID ;
typedef  TYPE_2__* PVFAT_DIRENTRY_CONTEXT ;
typedef  TYPE_3__* PVFATFCB ;
typedef  TYPE_1__* PUNICODE_STRING ;
typedef  int /*<<< orphan*/  PDEVICE_EXTENSION ;
typedef  scalar_t__ NTSTATUS ;
typedef  int /*<<< orphan*/  DIR_ENTRY ;
typedef  scalar_t__ BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ *) ; 
 int* FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int*,int /*<<< orphan*/ ) ; 
 scalar_t__ FALSE ; 
 scalar_t__ FUNC7 (TYPE_1__*,TYPE_1__*,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (TYPE_1__*) ; 
 scalar_t__ FUNC9 (TYPE_1__*,TYPE_1__*,scalar_t__,int /*<<< orphan*/ *) ; 
 int LONGNAME_MAX_LENGTH ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  NonPagedPool ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 scalar_t__ FUNC15 (TYPE_1__*,TYPE_1__*,scalar_t__) ; 
 scalar_t__ STATUS_INSUFFICIENT_RESOURCES ; 
 scalar_t__ STATUS_NO_MORE_ENTRIES ; 
 scalar_t__ STATUS_SUCCESS ; 
 scalar_t__ STATUS_UNSUCCESSFUL ; 
 int /*<<< orphan*/  TAG_NAME ; 
 scalar_t__ TRUE ; 
 int VFAT_BREAK_ON_CORRUPTION ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ **,TYPE_3__*,TYPE_2__*,scalar_t__) ; 
 TYPE_9__* VfatGlobalData ; 
 int /*<<< orphan*/  FUNC17 (TYPE_3__*) ; 
 TYPE_3__* FUNC18 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ) ; 

NTSTATUS
FUNC21(
    PDEVICE_EXTENSION DeviceExt,
    PVFATFCB Parent,
    PUNICODE_STRING FileToFindU,
    PVFAT_DIRENTRY_CONTEXT DirContext,
    BOOLEAN First)
{
    PWCHAR PathNameBuffer;
    USHORT PathNameBufferLength;
    NTSTATUS Status;
    PVOID Context = NULL;
    PVOID Page;
    PVFATFCB rcFcb;
    BOOLEAN Found;
    UNICODE_STRING PathNameU;
    UNICODE_STRING FileToFindUpcase;
    BOOLEAN WildCard;
    BOOLEAN IsFatX = FUNC20(DeviceExt);

    FUNC2("FindFile(Parent %p, FileToFind '%wZ', DirIndex: %u)\n",
           Parent, FileToFindU, DirContext->DirIndex);
    FUNC2("FindFile: Path %wZ\n",&Parent->PathNameU);

    PathNameBufferLength = LONGNAME_MAX_LENGTH * sizeof(WCHAR);
    PathNameBuffer = FUNC5(NonPagedPool, PathNameBufferLength + sizeof(WCHAR), TAG_NAME);
    if (!PathNameBuffer)
    {
        return STATUS_INSUFFICIENT_RESOURCES;
    }

    PathNameU.Buffer = PathNameBuffer;
    PathNameU.Length = 0;
    PathNameU.MaximumLength = PathNameBufferLength;

    DirContext->LongNameU.Length = 0;
    DirContext->ShortNameU.Length = 0;

    WildCard = FUNC8(FileToFindU);

    if (WildCard == FALSE)
    {
        /* if there is no '*?' in the search name, than look first for an existing fcb */
        FUNC13(&PathNameU, &Parent->PathNameU);
        if (!FUNC17(Parent))
        {
            PathNameU.Buffer[PathNameU.Length / sizeof(WCHAR)] = L'\\';
            PathNameU.Length += sizeof(WCHAR);
        }
        FUNC11(&PathNameU, FileToFindU);
        PathNameU.Buffer[PathNameU.Length / sizeof(WCHAR)] = 0;
        rcFcb = FUNC18(DeviceExt, &PathNameU);
        if (rcFcb)
        {
            ULONG startIndex = rcFcb->startIndex;
            if (IsFatX && !FUNC17(Parent))
            {
                startIndex += 2;
            }
            if(startIndex >= DirContext->DirIndex)
            {
                FUNC13(&DirContext->LongNameU, &rcFcb->LongNameU);
                FUNC13(&DirContext->ShortNameU, &rcFcb->ShortNameU);
                FUNC12(&DirContext->DirEntry, &rcFcb->entry, sizeof(DIR_ENTRY));
                DirContext->StartIndex = rcFcb->startIndex;
                DirContext->DirIndex = rcFcb->dirIndex;
                FUNC2("FindFile: new Name %wZ, DirIndex %u (%u)\n",
                    &DirContext->LongNameU, DirContext->DirIndex, DirContext->StartIndex);
                Status = STATUS_SUCCESS;
            }
            else
            {
                FUNC2("FCB not found for %wZ\n", &PathNameU);
                Status = STATUS_UNSUCCESSFUL;
            }
            FUNC19(DeviceExt, rcFcb);
            FUNC6(PathNameBuffer, TAG_NAME);
            return Status;
        }
    }

    /* FsRtlIsNameInExpression need the searched string to be upcase,
    * even if IgnoreCase is specified */
    Status = FUNC15(&FileToFindUpcase, FileToFindU, TRUE);
    if (!FUNC10(Status))
    {
        FUNC6(PathNameBuffer, TAG_NAME);
        return Status;
    }

    while (TRUE)
    {
        Status = FUNC16(DeviceExt, &Context, &Page, Parent, DirContext, First);
        First = FALSE;
        if (Status == STATUS_NO_MORE_ENTRIES)
        {
            break;
        }
        if (FUNC4(IsFatX, &DirContext->DirEntry))
        {
            DirContext->DirIndex++;
            continue;
        }
        if (DirContext->LongNameU.Length == 0 ||
            DirContext->ShortNameU.Length == 0)
        {
            FUNC3("WARNING: File system corruption detected. You may need to run a disk repair utility.\n");
            if (VfatGlobalData->Flags & VFAT_BREAK_ON_CORRUPTION)
            {
                FUNC0(DirContext->LongNameU.Length != 0 &&
                       DirContext->ShortNameU.Length != 0);
            }
            DirContext->DirIndex++;
            continue;
        }
        if (WildCard)
        {
            Found = FUNC9(&FileToFindUpcase, &DirContext->LongNameU, TRUE, NULL) ||
                FUNC9(&FileToFindUpcase, &DirContext->ShortNameU, TRUE, NULL);
        }
        else
        {
            Found = FUNC7(&DirContext->LongNameU, FileToFindU, TRUE, NULL) ||
                FUNC7(&DirContext->ShortNameU, FileToFindU, TRUE, NULL);
        }

        if (Found)
        {
            if (WildCard)
            {
                FUNC13(&PathNameU, &Parent->PathNameU);
                if (!FUNC17(Parent))
                {
                    PathNameU.Buffer[PathNameU.Length / sizeof(WCHAR)] = L'\\';
                    PathNameU.Length += sizeof(WCHAR);
                }
                FUNC11(&PathNameU, &DirContext->LongNameU);
                PathNameU.Buffer[PathNameU.Length / sizeof(WCHAR)] = 0;
                rcFcb = FUNC18(DeviceExt, &PathNameU);
                if (rcFcb != NULL)
                {
                    FUNC12(&DirContext->DirEntry, &rcFcb->entry, sizeof(DIR_ENTRY));
                    FUNC19(DeviceExt, rcFcb);
                }
            }
            FUNC2("%u\n", DirContext->LongNameU.Length);
            FUNC2("FindFile: new Name %wZ, DirIndex %u\n",
                &DirContext->LongNameU, DirContext->DirIndex);

            if (Context)
            {
                FUNC1(Context);
            }
            FUNC14(&FileToFindUpcase);
            FUNC6(PathNameBuffer, TAG_NAME);
            return STATUS_SUCCESS;
        }
        DirContext->DirIndex++;
    }

    if (Context)
    {
        FUNC1(Context);
    }

    FUNC14(&FileToFindUpcase);
    FUNC6(PathNameBuffer, TAG_NAME);
    return Status;
}