
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int UNICODE_STRING ;
struct TYPE_6__ {scalar_t__ Context; scalar_t__ IsrRoutine; } ;
typedef scalar_t__ PVOID ;
typedef TYPE_1__* PINTERNAL_I8042_HOOK_KEYBOARD ;
typedef scalar_t__ PI8042_KEYBOARD_ISR ;
typedef int * PFILE_OBJECT ;
typedef int * PDEVICE_OBJECT ;
typedef int NTSTATUS ;
typedef int INTERNAL_I8042_HOOK_KEYBOARD ;
typedef int BOOLEAN ;


 int DPRINT (int ) ;
 int ENTER_FUNC () ;
 TYPE_1__* ExAllocatePool (int ,int) ;
 int ExFreePool (TYPE_1__*) ;
 int FALSE ;
 int FILE_READ_ACCESS ;
 int IOCTL_INTERNAL_I8042_HOOK_KEYBOARD ;
 int IoGetDeviceObjectPointer (int *,int ,int **,int **) ;
 int LEAVE_FUNC () ;
 int NT_SUCCESS (int ) ;
 int ObDereferenceObject (int *) ;
 int PagedPool ;
 scalar_t__ PiceKbdIsr ;
 int PiceSendIoctl (int *,int ,TYPE_1__*,int) ;
 int ROS_STRING_INITIALIZER (char*) ;
 int RtlZeroMemory (TYPE_1__*,int) ;

BOOLEAN PatchKeyboardDriver(void)
{
 PINTERNAL_I8042_HOOK_KEYBOARD phkData;

    UNICODE_STRING DevName = ROS_STRING_INITIALIZER(L"\\Device\\Keyboard");
 PDEVICE_OBJECT kbdDevice = ((void*)0);
 PFILE_OBJECT FO = ((void*)0);
 NTSTATUS status;

 ENTER_FUNC();


    if( !NT_SUCCESS( status = IoGetDeviceObjectPointer( &DevName, FILE_READ_ACCESS, &FO, &kbdDevice ) ) )
 {
  DPRINT((0,"PatchKeyboardDriver: IoGetDeviceObjectPointer status: %x\n", status));
  return FALSE;
 }
 phkData = ExAllocatePool( PagedPool, sizeof( INTERNAL_I8042_HOOK_KEYBOARD ) );
 RtlZeroMemory( phkData, sizeof( INTERNAL_I8042_HOOK_KEYBOARD ) );

 phkData->IsrRoutine = (PI8042_KEYBOARD_ISR) PiceKbdIsr;
 phkData->Context = (PVOID) ((void*)0);


 status = PiceSendIoctl( kbdDevice, IOCTL_INTERNAL_I8042_HOOK_KEYBOARD,
   phkData, sizeof( INTERNAL_I8042_HOOK_KEYBOARD ) );
 DPRINT((0,"PatchKeyboardDriver: PiceSendIoctl status: %x\n", status));


 ObDereferenceObject(FO);
 ExFreePool(phkData);

 LEAVE_FUNC();

    return NT_SUCCESS(status);
}
