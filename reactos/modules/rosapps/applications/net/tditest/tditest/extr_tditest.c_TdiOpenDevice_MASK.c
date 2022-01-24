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
typedef  int /*<<< orphan*/  UNICODE_STRING ;
typedef  int /*<<< orphan*/  ULONG ;
typedef  int /*<<< orphan*/  PWSTR ;
typedef  int /*<<< orphan*/  PVOID ;
typedef  int /*<<< orphan*/ * PHANDLE ;
typedef  int /*<<< orphan*/  PFILE_OBJECT ;
typedef  int /*<<< orphan*/  PFILE_FULL_EA_INFORMATION ;
typedef  int /*<<< orphan*/  OBJECT_ATTRIBUTES ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  IO_STATUS_BLOCK ;

/* Variables and functions */
 int /*<<< orphan*/  FILE_ATTRIBUTE_NORMAL ; 
 int /*<<< orphan*/  FILE_OPEN_IF ; 
 int FILE_SHARE_READ ; 
 int FILE_SHARE_WRITE ; 
 int GENERIC_READ ; 
 int GENERIC_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  KernelMode ; 
 int /*<<< orphan*/  MIN_TRACE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OBJ_CASE_INSENSITIVE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

NTSTATUS FUNC7(
    PWSTR Protocol,
    ULONG EaLength,
    PFILE_FULL_EA_INFORMATION EaInfo,
    PHANDLE Handle,
    PFILE_OBJECT *Object)
/*
 * FUNCTION: Opens a device
 * ARGUMENTS:
 *     Protocol = Pointer to buffer with name of device
 *     EaLength = Length of EA information
 *     EaInfo   = Pointer to buffer with EA information
 *     Handle   = Address of buffer to place device handle
 *     Object   = Address of buffer to place device object
 * RETURNS:
 *     Status of operation
 */
{
	OBJECT_ATTRIBUTES Attr;
	IO_STATUS_BLOCK Iosb;
	UNICODE_STRING Name;
	NTSTATUS Status;

	FUNC3(&Name, Protocol);
	FUNC0(
		&Attr,                   /* Attribute buffer */
		&Name,                   /* Device name */
		OBJ_CASE_INSENSITIVE,    /* Attributes */
		NULL,                    /* Root directory */
		NULL);                   /* Security descriptor */

	Status = FUNC6(
		Handle,                               /* Return file handle */
		GENERIC_READ | GENERIC_WRITE,         /* Desired access */
		&Attr,                                /* Object attributes */
		&Iosb,                                /* IO status */
		0,                                    /* Initial allocation size */
		FILE_ATTRIBUTE_NORMAL,                /* File attributes */
		FILE_SHARE_READ | FILE_SHARE_WRITE,   /* Share access */
		FILE_OPEN_IF,                         /* Create disposition */
		0,                                    /* Create options */
		EaInfo,                               /* EA buffer */
		EaLength);                            /* EA length */

	if (FUNC1(Status))
		{
			Status  = FUNC2(
				*Handle,                        /* Handle to open file */
				GENERIC_READ | GENERIC_WRITE,   /* Access mode */
				NULL,                           /* Object type */
				KernelMode,                     /* Access mode */
				(PVOID*)Object,                 /* Pointer to object */
				NULL);                          /* Handle information */

			if (!FUNC1(Status))
				{
					FUNC4(MIN_TRACE, ("ObReferenceObjectByHandle() failed with status (0x%X).\n", Status));
					FUNC5(*Handle);
				}
		}
	else
		{
			FUNC4(MIN_TRACE, ("ZwCreateFile() failed with status (0x%X)\n", Status));
		}

    return Status;
}