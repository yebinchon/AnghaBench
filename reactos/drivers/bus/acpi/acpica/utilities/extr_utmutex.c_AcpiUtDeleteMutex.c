
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ThreadId; int * Mutex; } ;
typedef size_t ACPI_MUTEX_HANDLE ;


 int ACPI_FUNCTION_TRACE_U32 (int ,size_t) ;
 int ACPI_MUTEX_NOT_ACQUIRED ;
 TYPE_1__* AcpiGbl_MutexInfo ;
 int AcpiOsDeleteMutex (int *) ;
 int UtDeleteMutex ;
 int return_VOID ;

__attribute__((used)) static void
AcpiUtDeleteMutex (
    ACPI_MUTEX_HANDLE MutexId)
{

    ACPI_FUNCTION_TRACE_U32 (UtDeleteMutex, MutexId);


    AcpiOsDeleteMutex (AcpiGbl_MutexInfo[MutexId].Mutex);

    AcpiGbl_MutexInfo[MutexId].Mutex = ((void*)0);
    AcpiGbl_MutexInfo[MutexId].ThreadId = ACPI_MUTEX_NOT_ACQUIRED;

    return_VOID;
}
