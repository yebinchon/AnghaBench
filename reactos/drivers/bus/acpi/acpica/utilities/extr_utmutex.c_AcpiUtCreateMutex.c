
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ UseCount; int ThreadId; int Mutex; } ;
typedef int ACPI_STATUS ;
typedef size_t ACPI_MUTEX_HANDLE ;


 int ACPI_FUNCTION_TRACE_U32 (int ,size_t) ;
 int ACPI_MUTEX_NOT_ACQUIRED ;
 int AE_OK ;
 TYPE_1__* AcpiGbl_MutexInfo ;
 int AcpiOsCreateMutex (int *) ;
 int UtCreateMutex ;
 int return_ACPI_STATUS (int ) ;

__attribute__((used)) static ACPI_STATUS
AcpiUtCreateMutex (
    ACPI_MUTEX_HANDLE MutexId)
{
    ACPI_STATUS Status = AE_OK;


    ACPI_FUNCTION_TRACE_U32 (UtCreateMutex, MutexId);


    if (!AcpiGbl_MutexInfo[MutexId].Mutex)
    {
        Status = AcpiOsCreateMutex (&AcpiGbl_MutexInfo[MutexId].Mutex);
        AcpiGbl_MutexInfo[MutexId].ThreadId = ACPI_MUTEX_NOT_ACQUIRED;
        AcpiGbl_MutexInfo[MutexId].UseCount = 0;
    }

    return_ACPI_STATUS (Status);
}
