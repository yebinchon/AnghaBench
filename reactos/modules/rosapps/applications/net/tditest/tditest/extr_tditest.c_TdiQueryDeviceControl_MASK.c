#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ULONG ;
struct TYPE_6__ {int /*<<< orphan*/  Information; } ;
struct TYPE_5__ {int /*<<< orphan*/  FileObject; int /*<<< orphan*/  DeviceObject; } ;
typedef  int /*<<< orphan*/  PVOID ;
typedef  int /*<<< orphan*/ * PULONG ;
typedef  int /*<<< orphan*/  PIRP ;
typedef  TYPE_1__* PIO_STACK_LOCATION ;
typedef  int /*<<< orphan*/  PFILE_OBJECT ;
typedef  int /*<<< orphan*/  PDEVICE_OBJECT ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  TYPE_2__ IO_STATUS_BLOCK ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MIN_TRACE ; 
 int /*<<< orphan*/  STATUS_INSUFFICIENT_RESOURCES ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 

NTSTATUS FUNC5(
    PFILE_OBJECT FileObject,
    ULONG IoControlCode,
    PVOID InputBuffer,
    ULONG InputBufferLength,
    PVOID OutputBuffer,
    ULONG OutputBufferLength,
    PULONG Return)
/*
 * FUNCTION: Queries a device for information
 * ARGUMENTS:
 *     FileObject         = Pointer to device object
 *     IoControlCode      = I/O control code
 *     InputBuffer        = Pointer to buffer with input data
 *     InputBufferLength  = Length of InputBuffer
 *     OutputBuffer       = Address of buffer to place output data
 *     OutputBufferLength = Length of OutputBuffer
 * RETURNS:
 *     Status of operation
 */
{
	PDEVICE_OBJECT DeviceObject;
	PIO_STACK_LOCATION IoStack;
	IO_STATUS_BLOCK Iosb;
	NTSTATUS Status;
	PIRP Irp;

	DeviceObject = FUNC2(FileObject);
	Irp = FUNC0(IoControlCode, DeviceObject, InputBuffer, InputBufferLength, OutputBuffer,
		OutputBufferLength, FALSE, NULL, NULL);

	if (!Irp)
		{
			FUNC3(MIN_TRACE, ("IoBuildDeviceIoControlRequest() failed.\n"));
			return STATUS_INSUFFICIENT_RESOURCES;
		}

	IoStack               = FUNC1(Irp);
	IoStack->DeviceObject = DeviceObject;
	IoStack->FileObject   = FileObject;
	Status = FUNC4(Irp, DeviceObject, &Iosb, FALSE);

	if (Return)
		*Return = Iosb.Information;

	return Status;
}