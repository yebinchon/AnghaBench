#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ ULONG ;
typedef  int /*<<< orphan*/  PVOID ;
typedef  int /*<<< orphan*/  PUNICODE_STRING ;
typedef  int /*<<< orphan*/ * PHANDLE ;
typedef  int /*<<< orphan*/ * PFILE_OBJECT ;
typedef  int /*<<< orphan*/  PFILE_FULL_EA_INFORMATION ;
typedef  int /*<<< orphan*/  OBJECT_ATTRIBUTES ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  IO_STATUS_BLOCK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ AFD_SHARE_REUSE ; 
 int /*<<< orphan*/  FILE_ATTRIBUTE_NORMAL ; 
 int /*<<< orphan*/  FILE_OPEN_IF ; 
 scalar_t__ FILE_SHARE_READ ; 
 scalar_t__ FILE_SHARE_WRITE ; 
 int GENERIC_READ ; 
 int GENERIC_WRITE ; 
 int /*<<< orphan*/  INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * IoFileObjectType ; 
 int /*<<< orphan*/  KernelMode ; 
 int /*<<< orphan*/  MAX_TRACE ; 
 int /*<<< orphan*/  MIN_TRACE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int OBJ_CASE_INSENSITIVE ; 
 int OBJ_KERNEL_HANDLE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int SYNCHRONIZE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static NTSTATUS FUNC6(
    PUNICODE_STRING DeviceName,
    ULONG EaLength,
    PFILE_FULL_EA_INFORMATION EaInfo,
    ULONG ShareType,
    PHANDLE Handle,
    PFILE_OBJECT *Object)
/*
 * FUNCTION: Opens a device
 * ARGUMENTS:
 *     DeviceName = Pointer to counted string with name of device
 *     EaLength   = Length of EA information
 *     EaInfo     = Pointer to buffer with EA information
 *     Handle     = Address of buffer to place device handle
 *     Object     = Address of buffer to place device object
 * RETURNS:
 *     Status of operation
 */
{
    OBJECT_ATTRIBUTES Attr;
    IO_STATUS_BLOCK Iosb;
    NTSTATUS Status;
    ULONG ShareAccess;

    FUNC0(MAX_TRACE, ("Called. DeviceName (%wZ, %u)\n", DeviceName, ShareType));

    /* Determine the share access */
    if (ShareType != AFD_SHARE_REUSE)
    {
        /* Exclusive access */
        ShareAccess = 0;
    }
    else
    {
        /* Shared access */
        ShareAccess = FILE_SHARE_READ | FILE_SHARE_WRITE;
    }

    FUNC1(&Attr,                   /* Attribute buffer */
                               DeviceName,              /* Device name */
                               OBJ_CASE_INSENSITIVE |   /* Attributes */
                               OBJ_KERNEL_HANDLE,
                               NULL,                    /* Root directory */
                               NULL);                   /* Security descriptor */

    Status = FUNC5(Handle,                               /* Return file handle */
                          GENERIC_READ | GENERIC_WRITE | SYNCHRONIZE,         /* Desired access */
                          &Attr,                                /* Object attributes */
                          &Iosb,                                /* IO status */
                          0,                                    /* Initial allocation size */
                          FILE_ATTRIBUTE_NORMAL,                /* File attributes */
                          ShareAccess,                          /* Share access */
                          FILE_OPEN_IF,                         /* Create disposition */
                          0,                                    /* Create options */
                          EaInfo,                               /* EA buffer */
                          EaLength);                            /* EA length */
    if (FUNC2(Status)) {
        Status = FUNC3(*Handle,                       /* Handle to open file */
                                           GENERIC_READ | GENERIC_WRITE | SYNCHRONIZE,  /* Access mode */
                                           *IoFileObjectType,              /* Object type */
                                           KernelMode,                    /* Access mode */
                                           (PVOID*)Object,                /* Pointer to object */
                                           NULL);                         /* Handle information */
        if (!FUNC2(Status)) {
            FUNC0(MIN_TRACE, ("ObReferenceObjectByHandle() failed with status (0x%X).\n", Status));
            FUNC4(*Handle);
        } else {
            FUNC0(MAX_TRACE, ("Got handle (%p)  Object (%p)\n",
                                     *Handle, *Object));
        }
    } else {
        FUNC0(MIN_TRACE, ("ZwCreateFile() failed with status (0x%X)\n", Status));
    }

    if (!FUNC2(Status)) {
        *Handle = INVALID_HANDLE_VALUE;
        *Object = NULL;
    }

    return Status;
}