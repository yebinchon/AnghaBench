
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PKSTART_ROUTINE ;
typedef int OBJECT_ATTRIBUTES ;
typedef int NTSTATUS ;
typedef int HANDLE ;
typedef int ACPI_STATUS ;
typedef scalar_t__ ACPI_OSD_EXEC_CALLBACK ;
typedef int ACPI_EXECUTE_TYPE ;


 int AE_ERROR ;
 int AE_OK ;
 int DPRINT (char*) ;
 int InitializeObjectAttributes (int *,int *,int ,int *,int *) ;
 int NT_SUCCESS (int ) ;
 int OBJ_KERNEL_HANDLE ;
 int PsCreateSystemThread (int *,int ,int *,int *,int *,int ,void*) ;
 int THREAD_ALL_ACCESS ;
 int ZwClose (int ) ;

ACPI_STATUS
AcpiOsExecute (
    ACPI_EXECUTE_TYPE Type,
    ACPI_OSD_EXEC_CALLBACK Function,
    void *Context)
{
    HANDLE ThreadHandle;
    OBJECT_ATTRIBUTES ObjectAttributes;
    NTSTATUS Status;

    DPRINT("AcpiOsExecute\n");

    InitializeObjectAttributes(&ObjectAttributes,
                               ((void*)0),
                               OBJ_KERNEL_HANDLE,
                               ((void*)0),
                               ((void*)0));

    Status = PsCreateSystemThread(&ThreadHandle,
                                  THREAD_ALL_ACCESS,
                                  &ObjectAttributes,
                                  ((void*)0),
                                  ((void*)0),
                                  (PKSTART_ROUTINE)Function,
                                  Context);
    if (!NT_SUCCESS(Status))
        return AE_ERROR;

    ZwClose(ThreadHandle);

    return AE_OK;
}
