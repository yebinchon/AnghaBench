#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_38__   TYPE_9__ ;
typedef  struct TYPE_37__   TYPE_8__ ;
typedef  struct TYPE_36__   TYPE_7__ ;
typedef  struct TYPE_35__   TYPE_6__ ;
typedef  struct TYPE_34__   TYPE_5__ ;
typedef  struct TYPE_33__   TYPE_4__ ;
typedef  struct TYPE_32__   TYPE_3__ ;
typedef  struct TYPE_31__   TYPE_2__ ;
typedef  struct TYPE_30__   TYPE_1__ ;
typedef  struct TYPE_29__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
typedef  void* ULONGLONG ;
struct TYPE_38__ {int NameLength; int /*<<< orphan*/  NameType; int /*<<< orphan*/  Name; } ;
struct TYPE_37__ {int /*<<< orphan*/  LinkCount; } ;
struct TYPE_29__ {int /*<<< orphan*/  FileAttributes; int /*<<< orphan*/  NameType; } ;
struct TYPE_32__ {void* QuadPart; } ;
struct TYPE_31__ {void* QuadPart; } ;
struct TYPE_30__ {void* QuadPart; } ;
struct TYPE_33__ {TYPE_3__ AllocationSize; TYPE_2__ ValidDataLength; TYPE_1__ FileSize; } ;
struct TYPE_36__ {char* PathName; int RefCount; int /*<<< orphan*/  LinkCount; void* MFTIndex; TYPE_10__ Entry; TYPE_4__ RFCB; } ;
struct TYPE_35__ {int /*<<< orphan*/  FileAttribute; } ;
struct TYPE_34__ {scalar_t__* Buffer; int Length; } ;
typedef  TYPE_5__* PUNICODE_STRING ;
typedef  TYPE_6__* PSTANDARD_INFORMATION ;
typedef  int /*<<< orphan*/  PNTFS_VCB ;
typedef  TYPE_7__* PNTFS_FCB ;
typedef  TYPE_8__* PFILE_RECORD_HEADER ;
typedef  TYPE_9__* PFILENAME_ATTRIBUTE ;
typedef  char* PCWSTR ;
typedef  int /*<<< orphan*/  NTSTATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,TYPE_7__*,TYPE_5__*,char*,TYPE_8__*,TYPE_7__**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FILENAME_ATTRIBUTE ; 
 TYPE_9__* FUNC2 (int /*<<< orphan*/ ,TYPE_8__*) ; 
 TYPE_6__* FUNC3 (int /*<<< orphan*/ ,TYPE_8__*) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  NameLength ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_7__*) ; 
 TYPE_7__* FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_7__*) ; 
 void* FUNC8 (int /*<<< orphan*/ ,TYPE_8__*,char*,int,void**) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  STATUS_INSUFFICIENT_RESOURCES ; 
 int /*<<< orphan*/  STATUS_OBJECT_NAME_INVALID ; 
 int /*<<< orphan*/  STATUS_OBJECT_NAME_NOT_FOUND ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  UNICODE_NULL ; 
 int /*<<< orphan*/  FUNC10 (TYPE_10__*,TYPE_9__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*) ; 
 int FUNC13 (char*) ; 

NTSTATUS
FUNC14(PNTFS_VCB Vcb,
                        PNTFS_FCB DirectoryFCB,
                        PUNICODE_STRING Name,
                        PCWSTR Stream,
                        PFILE_RECORD_HEADER Record,
                        ULONGLONG MFTIndex,
                        PNTFS_FCB * fileFCB)
{
    WCHAR pathName[MAX_PATH];
    PFILENAME_ATTRIBUTE FileName;
    PSTANDARD_INFORMATION StdInfo;
    PNTFS_FCB rcFCB;
    ULONGLONG Size, AllocatedSize;

    FUNC0("NtfsMakeFCBFromDirEntry(%p, %p, %wZ, %p, %p, %p)\n", Vcb, DirectoryFCB, Name, Stream, Record, fileFCB);

    FileName = FUNC2(Vcb, Record);
    if (!FileName)
    {
        return STATUS_OBJECT_NAME_NOT_FOUND; // Not sure that's the best here
    }

    if (DirectoryFCB && Name)
    {
        if (Name->Buffer[0] != 0 && FUNC13(DirectoryFCB->PathName) +
            sizeof(WCHAR) + Name->Length / sizeof(WCHAR) > MAX_PATH)
        {
            return STATUS_OBJECT_NAME_INVALID;
        }

        FUNC12(pathName, DirectoryFCB->PathName);
        if (!FUNC7(DirectoryFCB))
        {
            FUNC11(pathName, L"\\");
        }
        FUNC11(pathName, Name->Buffer);
    }
    else
    {
        FUNC9(pathName, FileName->Name, FileName->NameLength * sizeof (WCHAR));
        pathName[FileName->NameLength] = UNICODE_NULL;
    }

    Size = FUNC8(Vcb, Record, (Stream ? Stream : L""), (Stream ? FUNC13(Stream) : 0), &AllocatedSize);

    rcFCB = FUNC5(pathName, Stream, Vcb);
    if (!rcFCB)
    {
        return STATUS_INSUFFICIENT_RESOURCES;
    }

    FUNC10(&rcFCB->Entry, FileName, FUNC1(FILENAME_ATTRIBUTE, NameLength));
    rcFCB->Entry.NameType = FileName->NameType;
    rcFCB->RFCB.FileSize.QuadPart = Size;
    rcFCB->RFCB.ValidDataLength.QuadPart = Size;
    rcFCB->RFCB.AllocationSize.QuadPart = AllocatedSize;

    StdInfo = FUNC3(Vcb, Record);
    if (StdInfo != NULL)
    {
        rcFCB->Entry.FileAttributes |= StdInfo->FileAttribute;
    }

    FUNC6(Vcb, rcFCB);
    rcFCB->RefCount = 1;
    rcFCB->MFTIndex = MFTIndex;
    rcFCB->LinkCount = Record->LinkCount;
    FUNC4(Vcb, rcFCB);
    *fileFCB = rcFCB;

    return STATUS_SUCCESS;
}