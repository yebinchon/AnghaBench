
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_9__ ;
typedef struct TYPE_28__ TYPE_3__ ;
typedef struct TYPE_27__ TYPE_2__ ;
typedef struct TYPE_26__ TYPE_1__ ;


typedef int WCHAR ;
typedef int USHORT ;
struct TYPE_26__ {int* Buffer; int Length; int MaximumLength; } ;
typedef TYPE_1__ UNICODE_STRING ;
typedef scalar_t__ ULONG ;
struct TYPE_29__ {int Flags; } ;
struct TYPE_28__ {int entry; int PathNameU; scalar_t__ dirIndex; scalar_t__ startIndex; int ShortNameU; int LongNameU; } ;
struct TYPE_27__ {scalar_t__ DirIndex; TYPE_1__ LongNameU; int DirEntry; TYPE_1__ ShortNameU; scalar_t__ StartIndex; } ;
typedef int* PWCHAR ;
typedef int * PVOID ;
typedef TYPE_2__* PVFAT_DIRENTRY_CONTEXT ;
typedef TYPE_3__* PVFATFCB ;
typedef TYPE_1__* PUNICODE_STRING ;
typedef int PDEVICE_EXTENSION ;
typedef scalar_t__ NTSTATUS ;
typedef int DIR_ENTRY ;
typedef scalar_t__ BOOLEAN ;


 int ASSERT (int) ;
 int CcUnpinData (int *) ;
 int DPRINT (char*,...) ;
 int DPRINT1 (char*) ;
 scalar_t__ ENTRY_VOLUME (scalar_t__,int *) ;
 int* ExAllocatePoolWithTag (int ,int,int ) ;
 int ExFreePoolWithTag (int*,int ) ;
 scalar_t__ FALSE ;
 scalar_t__ FsRtlAreNamesEqual (TYPE_1__*,TYPE_1__*,scalar_t__,int *) ;
 scalar_t__ FsRtlDoesNameContainWildCards (TYPE_1__*) ;
 scalar_t__ FsRtlIsNameInExpression (TYPE_1__*,TYPE_1__*,scalar_t__,int *) ;
 int LONGNAME_MAX_LENGTH ;
 int NT_SUCCESS (scalar_t__) ;
 int NonPagedPool ;
 int RtlAppendUnicodeStringToString (TYPE_1__*,TYPE_1__*) ;
 int RtlCopyMemory (int *,int *,int) ;
 int RtlCopyUnicodeString (TYPE_1__*,int *) ;
 int RtlFreeUnicodeString (TYPE_1__*) ;
 scalar_t__ RtlUpcaseUnicodeString (TYPE_1__*,TYPE_1__*,scalar_t__) ;
 scalar_t__ STATUS_INSUFFICIENT_RESOURCES ;
 scalar_t__ STATUS_NO_MORE_ENTRIES ;
 scalar_t__ STATUS_SUCCESS ;
 scalar_t__ STATUS_UNSUCCESSFUL ;
 int TAG_NAME ;
 scalar_t__ TRUE ;
 int VFAT_BREAK_ON_CORRUPTION ;
 scalar_t__ VfatGetNextDirEntry (int ,int **,int **,TYPE_3__*,TYPE_2__*,scalar_t__) ;
 TYPE_9__* VfatGlobalData ;
 int vfatFCBIsRoot (TYPE_3__*) ;
 TYPE_3__* vfatGrabFCBFromTable (int ,TYPE_1__*) ;
 int vfatReleaseFCB (int ,TYPE_3__*) ;
 scalar_t__ vfatVolumeIsFatX (int ) ;

NTSTATUS
FindFile(
    PDEVICE_EXTENSION DeviceExt,
    PVFATFCB Parent,
    PUNICODE_STRING FileToFindU,
    PVFAT_DIRENTRY_CONTEXT DirContext,
    BOOLEAN First)
{
    PWCHAR PathNameBuffer;
    USHORT PathNameBufferLength;
    NTSTATUS Status;
    PVOID Context = ((void*)0);
    PVOID Page;
    PVFATFCB rcFcb;
    BOOLEAN Found;
    UNICODE_STRING PathNameU;
    UNICODE_STRING FileToFindUpcase;
    BOOLEAN WildCard;
    BOOLEAN IsFatX = vfatVolumeIsFatX(DeviceExt);

    DPRINT("FindFile(Parent %p, FileToFind '%wZ', DirIndex: %u)\n",
           Parent, FileToFindU, DirContext->DirIndex);
    DPRINT("FindFile: Path %wZ\n",&Parent->PathNameU);

    PathNameBufferLength = LONGNAME_MAX_LENGTH * sizeof(WCHAR);
    PathNameBuffer = ExAllocatePoolWithTag(NonPagedPool, PathNameBufferLength + sizeof(WCHAR), TAG_NAME);
    if (!PathNameBuffer)
    {
        return STATUS_INSUFFICIENT_RESOURCES;
    }

    PathNameU.Buffer = PathNameBuffer;
    PathNameU.Length = 0;
    PathNameU.MaximumLength = PathNameBufferLength;

    DirContext->LongNameU.Length = 0;
    DirContext->ShortNameU.Length = 0;

    WildCard = FsRtlDoesNameContainWildCards(FileToFindU);

    if (WildCard == FALSE)
    {

        RtlCopyUnicodeString(&PathNameU, &Parent->PathNameU);
        if (!vfatFCBIsRoot(Parent))
        {
            PathNameU.Buffer[PathNameU.Length / sizeof(WCHAR)] = L'\\';
            PathNameU.Length += sizeof(WCHAR);
        }
        RtlAppendUnicodeStringToString(&PathNameU, FileToFindU);
        PathNameU.Buffer[PathNameU.Length / sizeof(WCHAR)] = 0;
        rcFcb = vfatGrabFCBFromTable(DeviceExt, &PathNameU);
        if (rcFcb)
        {
            ULONG startIndex = rcFcb->startIndex;
            if (IsFatX && !vfatFCBIsRoot(Parent))
            {
                startIndex += 2;
            }
            if(startIndex >= DirContext->DirIndex)
            {
                RtlCopyUnicodeString(&DirContext->LongNameU, &rcFcb->LongNameU);
                RtlCopyUnicodeString(&DirContext->ShortNameU, &rcFcb->ShortNameU);
                RtlCopyMemory(&DirContext->DirEntry, &rcFcb->entry, sizeof(DIR_ENTRY));
                DirContext->StartIndex = rcFcb->startIndex;
                DirContext->DirIndex = rcFcb->dirIndex;
                DPRINT("FindFile: new Name %wZ, DirIndex %u (%u)\n",
                    &DirContext->LongNameU, DirContext->DirIndex, DirContext->StartIndex);
                Status = STATUS_SUCCESS;
            }
            else
            {
                DPRINT("FCB not found for %wZ\n", &PathNameU);
                Status = STATUS_UNSUCCESSFUL;
            }
            vfatReleaseFCB(DeviceExt, rcFcb);
            ExFreePoolWithTag(PathNameBuffer, TAG_NAME);
            return Status;
        }
    }



    Status = RtlUpcaseUnicodeString(&FileToFindUpcase, FileToFindU, TRUE);
    if (!NT_SUCCESS(Status))
    {
        ExFreePoolWithTag(PathNameBuffer, TAG_NAME);
        return Status;
    }

    while (TRUE)
    {
        Status = VfatGetNextDirEntry(DeviceExt, &Context, &Page, Parent, DirContext, First);
        First = FALSE;
        if (Status == STATUS_NO_MORE_ENTRIES)
        {
            break;
        }
        if (ENTRY_VOLUME(IsFatX, &DirContext->DirEntry))
        {
            DirContext->DirIndex++;
            continue;
        }
        if (DirContext->LongNameU.Length == 0 ||
            DirContext->ShortNameU.Length == 0)
        {
            DPRINT1("WARNING: File system corruption detected. You may need to run a disk repair utility.\n");
            if (VfatGlobalData->Flags & VFAT_BREAK_ON_CORRUPTION)
            {
                ASSERT(DirContext->LongNameU.Length != 0 &&
                       DirContext->ShortNameU.Length != 0);
            }
            DirContext->DirIndex++;
            continue;
        }
        if (WildCard)
        {
            Found = FsRtlIsNameInExpression(&FileToFindUpcase, &DirContext->LongNameU, TRUE, ((void*)0)) ||
                FsRtlIsNameInExpression(&FileToFindUpcase, &DirContext->ShortNameU, TRUE, ((void*)0));
        }
        else
        {
            Found = FsRtlAreNamesEqual(&DirContext->LongNameU, FileToFindU, TRUE, ((void*)0)) ||
                FsRtlAreNamesEqual(&DirContext->ShortNameU, FileToFindU, TRUE, ((void*)0));
        }

        if (Found)
        {
            if (WildCard)
            {
                RtlCopyUnicodeString(&PathNameU, &Parent->PathNameU);
                if (!vfatFCBIsRoot(Parent))
                {
                    PathNameU.Buffer[PathNameU.Length / sizeof(WCHAR)] = L'\\';
                    PathNameU.Length += sizeof(WCHAR);
                }
                RtlAppendUnicodeStringToString(&PathNameU, &DirContext->LongNameU);
                PathNameU.Buffer[PathNameU.Length / sizeof(WCHAR)] = 0;
                rcFcb = vfatGrabFCBFromTable(DeviceExt, &PathNameU);
                if (rcFcb != ((void*)0))
                {
                    RtlCopyMemory(&DirContext->DirEntry, &rcFcb->entry, sizeof(DIR_ENTRY));
                    vfatReleaseFCB(DeviceExt, rcFcb);
                }
            }
            DPRINT("%u\n", DirContext->LongNameU.Length);
            DPRINT("FindFile: new Name %wZ, DirIndex %u\n",
                &DirContext->LongNameU, DirContext->DirIndex);

            if (Context)
            {
                CcUnpinData(Context);
            }
            RtlFreeUnicodeString(&FileToFindUpcase);
            ExFreePoolWithTag(PathNameBuffer, TAG_NAME);
            return STATUS_SUCCESS;
        }
        DirContext->DirIndex++;
    }

    if (Context)
    {
        CcUnpinData(Context);
    }

    RtlFreeUnicodeString(&FileToFindUpcase);
    ExFreePoolWithTag(PathNameBuffer, TAG_NAME);
    return Status;
}
