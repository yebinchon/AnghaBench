
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int DriverUnload; } ;
typedef int PUNICODE_STRING ;
typedef TYPE_1__* PDRIVER_OBJECT ;
typedef int NTSTATUS ;


 int DbgPrint (char*) ;
 int DriverUnload ;
 int STATUS_SUCCESS ;

NTSTATUS
DriverEntry(PDRIVER_OBJECT DriverObject,
            PUNICODE_STRING RegistryPath)
{
    DriverObject->DriverUnload = DriverUnload;

    DbgPrint("Test driver loaded sucessfully\n");

    return STATUS_SUCCESS;
}
