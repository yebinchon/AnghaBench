#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UNICODE_STRING ;
typedef  int ULONGLONG ;
struct TYPE_14__ {int /*<<< orphan*/  FileRecLookasideList; } ;
struct TYPE_13__ {int Flags; } ;
typedef  int /*<<< orphan*/ * PNTFS_FCB ;
typedef  TYPE_1__* PFILE_RECORD_HEADER ;
typedef  int /*<<< orphan*/  PFILE_OBJECT ;
typedef  TYPE_2__* PDEVICE_EXTENSION ;
typedef  int /*<<< orphan*/  NTSTATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_2__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ **) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FRH_IN_USE ; 
 int /*<<< orphan*/ * MftIdToName ; 
 int NTFS_FILE_FIRST_USER_FILE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STATUS_INSUFFICIENT_RESOURCES ; 
 int /*<<< orphan*/  STATUS_OBJECT_NAME_NOT_FOUND ; 
 int /*<<< orphan*/  STATUS_OBJECT_PATH_NOT_FOUND ; 

__attribute__((used)) static
NTSTATUS
FUNC10(PDEVICE_EXTENSION DeviceExt,
                 PFILE_OBJECT FileObject,
                 ULONGLONG MftId,
                 PNTFS_FCB * FoundFCB)
{
    NTSTATUS Status;
    PNTFS_FCB FCB;
    PFILE_RECORD_HEADER MftRecord;

    FUNC1("NtfsOpenFileById(%p, %p, %I64x, %p)\n", DeviceExt, FileObject, MftId, FoundFCB);

    FUNC0(MftId < NTFS_FILE_FIRST_USER_FILE);
    if (MftId > 0xb) /* No entries are used yet beyond this */
    {
        return STATUS_OBJECT_NAME_NOT_FOUND;
    }

    MftRecord = FUNC2(&DeviceExt->FileRecLookasideList);
    if (MftRecord == NULL)
    {
        return STATUS_INSUFFICIENT_RESOURCES;
    }

    Status = FUNC8(DeviceExt, MftId, MftRecord);
    if (!FUNC4(Status))
    {
        FUNC3(&DeviceExt->FileRecLookasideList, MftRecord);
        return Status;
    }

    if (!(MftRecord->Flags & FRH_IN_USE))
    {
        FUNC3(&DeviceExt->FileRecLookasideList, MftRecord);
        return STATUS_OBJECT_PATH_NOT_FOUND;
    }

    FCB = FUNC6(DeviceExt, MftIdToName[MftId]);
    if (FCB == NULL)
    {
        UNICODE_STRING Name;

        FUNC9(&Name, MftIdToName[MftId]);
        Status = FUNC7(DeviceExt, NULL, &Name, NULL, MftRecord, MftId, &FCB);
        if (!FUNC4(Status))
        {
            FUNC3(&DeviceExt->FileRecLookasideList, MftRecord);
            return Status;
        }
    }

    FUNC0(FCB != NULL);

    FUNC3(&DeviceExt->FileRecLookasideList, MftRecord);

    Status = FUNC5(DeviceExt,
                                       FCB,
                                       FileObject);
    *FoundFCB = FCB;

    return Status;
}