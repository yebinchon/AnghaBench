
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFAST_MUTEX ;
typedef int FAST_MUTEX ;
typedef int ACPI_STATUS ;
typedef scalar_t__ ACPI_MUTEX ;


 int AE_BAD_PARAMETER ;
 int AE_NO_MEMORY ;
 int AE_OK ;
 int DPRINT1 (char*) ;
 scalar_t__ ExAllocatePoolWithTag (int ,int,char) ;
 int ExInitializeFastMutex (scalar_t__) ;
 int NonPagedPool ;

ACPI_STATUS
AcpiOsCreateMutex(
    ACPI_MUTEX *OutHandle)
{
    PFAST_MUTEX Mutex;

    if (!OutHandle)
    {
        DPRINT1("Bad parameter\n");
        return AE_BAD_PARAMETER;
    }

    Mutex = ExAllocatePoolWithTag(NonPagedPool, sizeof(FAST_MUTEX), 'LpcA');
    if (!Mutex) return AE_NO_MEMORY;

    ExInitializeFastMutex(Mutex);

    *OutHandle = (ACPI_MUTEX)Mutex;

    return AE_OK;
}
