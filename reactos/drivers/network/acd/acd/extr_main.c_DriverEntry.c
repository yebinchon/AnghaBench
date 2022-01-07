
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UNICODE_STRING ;
typedef int PUNICODE_STRING ;
typedef int PDRIVER_OBJECT ;
typedef int PDEVICE_OBJECT ;
typedef int NTSTATUS ;


 int DPRINT1 (char*,int ) ;
 int FALSE ;
 int FILE_DEVICE_RASACD ;
 int IoCreateDevice (int ,int ,int *,int ,int ,int ,int *) ;
 int NT_SUCCESS (int ) ;
 int RtlInitUnicodeString (int *,char*) ;
 int STATUS_SUCCESS ;

NTSTATUS
DriverEntry(PDRIVER_OBJECT pDriverObject,
            PUNICODE_STRING pRegistryPath)
{
    UNICODE_STRING DeviceName;
    PDEVICE_OBJECT pDeviceObject;
    NTSTATUS Status;

    RtlInitUnicodeString(&DeviceName, L"RasAcd");

    Status = IoCreateDevice(pDriverObject,
                            0,
                            &DeviceName,
                            FILE_DEVICE_RASACD,
                            0,
                            FALSE,
                            &pDeviceObject);

    if (!NT_SUCCESS(Status))
    {
        DPRINT1("IoCreateDevice() failed (Status %lx)\n", Status);
        return Status;
    }

    return STATUS_SUCCESS;
}
