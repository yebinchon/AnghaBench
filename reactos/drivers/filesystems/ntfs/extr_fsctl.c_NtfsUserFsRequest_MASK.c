#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  DeviceExtension; } ;
struct TYPE_7__ {int FsControlCode; } ;
struct TYPE_8__ {TYPE_1__ FileSystemControl; } ;
struct TYPE_9__ {TYPE_2__ Parameters; } ;
typedef  int /*<<< orphan*/  PIRP ;
typedef  TYPE_3__* PIO_STACK_LOCATION ;
typedef  TYPE_4__* PDEVICE_OBJECT ;
typedef  int /*<<< orphan*/  PDEVICE_EXTENSION ;
typedef  int /*<<< orphan*/  NTSTATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FALSE ; 
#define  FSCTL_CREATE_USN_JOURNAL 143 
#define  FSCTL_DELETE_USN_JOURNAL 142 
#define  FSCTL_ENUM_USN_DATA 141 
#define  FSCTL_EXTEND_VOLUME 140 
#define  FSCTL_GET_NTFS_FILE_RECORD 139 
#define  FSCTL_GET_NTFS_VOLUME_DATA 138 
#define  FSCTL_GET_RETRIEVAL_POINTERS 137 
#define  FSCTL_GET_VOLUME_BITMAP 136 
#define  FSCTL_LOCK_VOLUME 135 
#define  FSCTL_MARK_HANDLE 134 
#define  FSCTL_MOVE_FILE 133 
#define  FSCTL_QUERY_USN_JOURNAL 132 
#define  FSCTL_READ_FILE_USN_DATA 131 
#define  FSCTL_READ_USN_JOURNAL 130 
#define  FSCTL_UNLOCK_VOLUME 129 
#define  FSCTL_WRITE_USN_CLOSE_RECORD 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STATUS_INVALID_DEVICE_REQUEST ; 
 int /*<<< orphan*/  STATUS_NOT_IMPLEMENTED ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  UNIMPLEMENTED ; 

__attribute__((used)) static
NTSTATUS
FUNC7(PDEVICE_OBJECT DeviceObject,
                  PIRP Irp)
{
    NTSTATUS Status;
    PIO_STACK_LOCATION Stack;
    PDEVICE_EXTENSION DeviceExt;

    FUNC0("NtfsUserFsRequest(%p, %p)\n", DeviceObject, Irp);

    Stack = FUNC5(Irp);
    DeviceExt = DeviceObject->DeviceExtension;
    switch (Stack->Parameters.FileSystemControl.FsControlCode)
    {
        case FSCTL_CREATE_USN_JOURNAL:
        case FSCTL_DELETE_USN_JOURNAL:
        case FSCTL_ENUM_USN_DATA:
        case FSCTL_EXTEND_VOLUME:
        //case FSCTL_GET_RETRIEVAL_POINTER_BASE:
        case FSCTL_GET_RETRIEVAL_POINTERS:
        //case FSCTL_LOOKUP_STREAM_FROM_CLUSTER:
        case FSCTL_MARK_HANDLE:
        case FSCTL_MOVE_FILE:
        case FSCTL_QUERY_USN_JOURNAL:
        case FSCTL_READ_FILE_USN_DATA:
        case FSCTL_READ_USN_JOURNAL:
        //case FSCTL_SHRINK_VOLUME:
        case FSCTL_WRITE_USN_CLOSE_RECORD:
            UNIMPLEMENTED;
            FUNC1("Unimplemented user request: %x\n", Stack->Parameters.FileSystemControl.FsControlCode);
            Status = STATUS_NOT_IMPLEMENTED;
            break;

        case FSCTL_LOCK_VOLUME:
            Status = FUNC6(DeviceExt, Irp, TRUE);
            break;

        case FSCTL_UNLOCK_VOLUME:
            Status = FUNC6(DeviceExt, Irp, FALSE);
            break;

        case FSCTL_GET_NTFS_VOLUME_DATA:
            Status = FUNC2(DeviceExt, Irp);
            break;

        case FSCTL_GET_NTFS_FILE_RECORD:
            Status = FUNC3(DeviceExt, Irp);
            break;

        case FSCTL_GET_VOLUME_BITMAP:
            Status = FUNC4(DeviceExt, Irp);
            break;

        default:
            FUNC0("Invalid user request: %x\n", Stack->Parameters.FileSystemControl.FsControlCode);
            Status = STATUS_INVALID_DEVICE_REQUEST;
            break;
    }

    return Status;
}