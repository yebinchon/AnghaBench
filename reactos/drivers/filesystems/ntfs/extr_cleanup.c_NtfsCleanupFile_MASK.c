#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  Flags; scalar_t__ FsContext; } ;
struct TYPE_7__ {int /*<<< orphan*/  FileSize; } ;
struct TYPE_8__ {int Flags; scalar_t__ OpenHandleCount; int /*<<< orphan*/  MainResource; TYPE_1__ RFCB; } ;
typedef  TYPE_2__* PNTFS_FCB ;
typedef  TYPE_3__* PFILE_OBJECT ;
typedef  int /*<<< orphan*/  PDEVICE_EXTENSION ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FCB_IS_VOLUME ; 
 int /*<<< orphan*/  FO_CLEANUP_COMPLETE ; 
 int /*<<< orphan*/  STATUS_PENDING ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 

NTSTATUS
FUNC4(PDEVICE_EXTENSION DeviceExt,
                PFILE_OBJECT FileObject,
                BOOLEAN CanWait)
{
    PNTFS_FCB Fcb;

    FUNC1("NtfsCleanupFile(DeviceExt %p, FileObject %p, CanWait %u)\n",
           DeviceExt,
           FileObject,
           CanWait);

    Fcb = (PNTFS_FCB)(FileObject->FsContext);
    if (!Fcb)
        return STATUS_SUCCESS;

    if (Fcb->Flags & FCB_IS_VOLUME)
    {
        Fcb->OpenHandleCount--;

        if (Fcb->OpenHandleCount != 0)
        {
            // Remove share access when handled
        }
    }
    else
    {
        if (!FUNC2(&Fcb->MainResource, CanWait))
        {
            return STATUS_PENDING;
        }

        Fcb->OpenHandleCount--;

        FUNC0(FileObject, &Fcb->RFCB.FileSize, NULL);

        if (Fcb->OpenHandleCount != 0)
        {
            // Remove share access when handled
        }

        FileObject->Flags |= FO_CLEANUP_COMPLETE;

        FUNC3(&Fcb->MainResource);
    }

    return STATUS_SUCCESS;
}