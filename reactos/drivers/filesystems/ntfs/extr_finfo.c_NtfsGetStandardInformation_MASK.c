#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  Directory; int /*<<< orphan*/  DeletePending; int /*<<< orphan*/  NumberOfLinks; int /*<<< orphan*/  EndOfFile; int /*<<< orphan*/  AllocationSize; } ;
struct TYPE_10__ {int /*<<< orphan*/  FileSize; int /*<<< orphan*/  AllocationSize; } ;
struct TYPE_11__ {int /*<<< orphan*/  LinkCount; TYPE_1__ RFCB; } ;
typedef  int* PULONG ;
typedef  TYPE_2__* PNTFS_FCB ;
typedef  TYPE_3__* PFILE_STANDARD_INFORMATION ;
typedef  int /*<<< orphan*/  PDEVICE_OBJECT ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  FILE_STANDARD_INFORMATION ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_2__*,int /*<<< orphan*/ ,TYPE_3__*,int*) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  STATUS_BUFFER_TOO_SMALL ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static
NTSTATUS
FUNC5(PNTFS_FCB Fcb,
                           PDEVICE_OBJECT DeviceObject,
                           PFILE_STANDARD_INFORMATION StandardInfo,
                           PULONG BufferLength)
{
    FUNC4(DeviceObject);

    FUNC1("NtfsGetStandardInformation(%p, %p, %p, %p)\n", Fcb, DeviceObject, StandardInfo, BufferLength);

    if (*BufferLength < sizeof(FILE_STANDARD_INFORMATION))
        return STATUS_BUFFER_TOO_SMALL;

    /* PRECONDITION */
    FUNC0(StandardInfo != NULL);
    FUNC0(Fcb != NULL);

    FUNC3(StandardInfo,
                  sizeof(FILE_STANDARD_INFORMATION));

    StandardInfo->AllocationSize = Fcb->RFCB.AllocationSize;
    StandardInfo->EndOfFile = Fcb->RFCB.FileSize;
    StandardInfo->NumberOfLinks = Fcb->LinkCount;
    StandardInfo->DeletePending = FALSE;
    StandardInfo->Directory = FUNC2(Fcb);

    *BufferLength -= sizeof(FILE_STANDARD_INFORMATION);

    return STATUS_SUCCESS;
}