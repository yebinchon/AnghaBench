#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UNICODE_STRING ;
struct TYPE_6__ {scalar_t__ Context; scalar_t__ IsrRoutine; } ;
typedef  scalar_t__ PVOID ;
typedef  TYPE_1__* PINTERNAL_I8042_HOOK_KEYBOARD ;
typedef  scalar_t__ PI8042_KEYBOARD_ISR ;
typedef  int /*<<< orphan*/ * PFILE_OBJECT ;
typedef  int /*<<< orphan*/ * PDEVICE_OBJECT ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  INTERNAL_I8042_HOOK_KEYBOARD ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FILE_READ_ACCESS ; 
 int /*<<< orphan*/  IOCTL_INTERNAL_I8042_HOOK_KEYBOARD ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PagedPool ; 
 scalar_t__ PiceKbdIsr ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int) ; 

BOOLEAN FUNC11(void)
{
	PINTERNAL_I8042_HOOK_KEYBOARD phkData;
	//When we have i8042 driver this should be changed!!!!!!!
    UNICODE_STRING DevName = FUNC9(L"\\Device\\Keyboard");
	PDEVICE_OBJECT kbdDevice = NULL;
	PFILE_OBJECT FO = NULL;
	NTSTATUS status;

	FUNC1();

	//Get pointer to keyboard device
    if( !FUNC6( status = FUNC4( &DevName, FILE_READ_ACCESS, &FO, &kbdDevice ) ) )
	{
		FUNC0((0,"PatchKeyboardDriver: IoGetDeviceObjectPointer status: %x\n", status));
		return FALSE;
	}
	phkData = FUNC2( PagedPool, sizeof( INTERNAL_I8042_HOOK_KEYBOARD ) );
	FUNC10( phkData, sizeof( INTERNAL_I8042_HOOK_KEYBOARD ) );

	phkData->IsrRoutine = (PI8042_KEYBOARD_ISR) PiceKbdIsr;
	phkData->Context = (PVOID) NULL; //DeviceObject;

	//call keyboard device internal io control to hook keyboard input stream
	status = FUNC8( kbdDevice, IOCTL_INTERNAL_I8042_HOOK_KEYBOARD,
			phkData, sizeof( INTERNAL_I8042_HOOK_KEYBOARD ) );
	FUNC0((0,"PatchKeyboardDriver: PiceSendIoctl status: %x\n", status));


	FUNC7(FO);
	FUNC3(phkData);

	FUNC5();

    return FUNC6(status);
}