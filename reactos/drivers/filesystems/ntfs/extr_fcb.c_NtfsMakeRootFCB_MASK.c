#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_36__   TYPE_9__ ;
typedef  struct TYPE_35__   TYPE_8__ ;
typedef  struct TYPE_34__   TYPE_7__ ;
typedef  struct TYPE_33__   TYPE_6__ ;
typedef  struct TYPE_32__   TYPE_5__ ;
typedef  struct TYPE_31__   TYPE_4__ ;
typedef  struct TYPE_30__   TYPE_3__ ;
typedef  struct TYPE_29__   TYPE_2__ ;
typedef  struct TYPE_28__   TYPE_1__ ;

/* Type definitions */
struct TYPE_36__ {int /*<<< orphan*/ * Name; scalar_t__ NameLength; int /*<<< orphan*/  NameType; } ;
struct TYPE_35__ {int /*<<< orphan*/  AllocatedSize; int /*<<< orphan*/  DataSize; int /*<<< orphan*/  NameType; } ;
struct TYPE_34__ {int /*<<< orphan*/  LinkCount; } ;
struct TYPE_30__ {int /*<<< orphan*/  QuadPart; } ;
struct TYPE_29__ {int /*<<< orphan*/  QuadPart; } ;
struct TYPE_28__ {int /*<<< orphan*/  QuadPart; } ;
struct TYPE_31__ {TYPE_3__ AllocationSize; TYPE_2__ ValidDataLength; TYPE_1__ FileSize; } ;
struct TYPE_33__ {int RefCount; int /*<<< orphan*/  LinkCount; int /*<<< orphan*/  MFTIndex; TYPE_4__ RFCB; scalar_t__ DirIndex; TYPE_9__ Entry; } ;
struct TYPE_32__ {int /*<<< orphan*/  FileRecLookasideList; } ;
typedef  TYPE_5__* PNTFS_VCB ;
typedef  TYPE_6__* PNTFS_FCB ;
typedef  TYPE_7__* PFILE_RECORD_HEADER ;
typedef  TYPE_8__* PFILENAME_ATTRIBUTE ;

/* Variables and functions */
 TYPE_7__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FILENAME_ATTRIBUTE ; 
 TYPE_8__* FUNC3 (TYPE_5__*,TYPE_7__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NTFS_FILE_NAME_WIN32 ; 
 int /*<<< orphan*/  NTFS_FILE_ROOT ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NameLength ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,TYPE_6__*) ; 
 TYPE_6__* FUNC6 (char*,int /*<<< orphan*/ *,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*,int /*<<< orphan*/ ,TYPE_7__*) ; 
 int /*<<< orphan*/  UNICODE_NULL ; 
 int /*<<< orphan*/  FUNC10 (TYPE_9__*,TYPE_8__*,int /*<<< orphan*/ ) ; 

PNTFS_FCB
FUNC11(PNTFS_VCB Vcb)
{
    PNTFS_FCB Fcb;
    PFILE_RECORD_HEADER MftRecord;
    PFILENAME_ATTRIBUTE FileName;

    MftRecord = FUNC0(&Vcb->FileRecLookasideList);
    if (MftRecord == NULL)
    {
        return NULL;
    }

    if (!FUNC4(FUNC9(Vcb, NTFS_FILE_ROOT, MftRecord)))
    {
        FUNC1(&Vcb->FileRecLookasideList, MftRecord);
        return NULL;
    }

    FileName = FUNC3(Vcb, MftRecord, NTFS_FILE_NAME_WIN32);
    if (!FileName)
    {
        FUNC1(&Vcb->FileRecLookasideList, MftRecord);
        return NULL;
    }

    Fcb = FUNC6(L"\\", NULL, Vcb);
    if (!Fcb)
    {
        FUNC1(&Vcb->FileRecLookasideList, MftRecord);
        return NULL;
    }

    FUNC10(&Fcb->Entry, FileName, FUNC2(FILENAME_ATTRIBUTE, NameLength));
    Fcb->Entry.NameType = FileName->NameType;
    Fcb->Entry.NameLength = 0;
    Fcb->Entry.Name[0] = UNICODE_NULL;
    Fcb->RefCount = 1;
    Fcb->DirIndex = 0;
    Fcb->RFCB.FileSize.QuadPart = FileName->DataSize;
    Fcb->RFCB.ValidDataLength.QuadPart = FileName->DataSize;
    Fcb->RFCB.AllocationSize.QuadPart = FileName->AllocatedSize;
    Fcb->MFTIndex = NTFS_FILE_ROOT;
    Fcb->LinkCount = MftRecord->LinkCount;

    FUNC7(Vcb, Fcb);
    FUNC5(Vcb, Fcb);
    FUNC8(Vcb, Fcb);

    FUNC1(&Vcb->FileRecLookasideList, MftRecord);

    return Fcb;
}