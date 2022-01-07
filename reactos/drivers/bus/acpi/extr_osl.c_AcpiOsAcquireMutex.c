
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT16 ;
typedef int PFAST_MUTEX ;
typedef int ACPI_STATUS ;
typedef scalar_t__ ACPI_MUTEX ;


 scalar_t__ ACPI_DO_NOT_WAIT ;
 int AE_BAD_PARAMETER ;
 int AE_OK ;
 int AE_TIME ;
 int DPRINT1 (char*) ;
 int ExAcquireFastMutex (int ) ;
 int ExTryToAcquireFastMutex (int ) ;

ACPI_STATUS
AcpiOsAcquireMutex(
    ACPI_MUTEX Handle,
    UINT16 Timeout)
{
    if (!Handle)
    {
        DPRINT1("Bad parameter\n");
        return AE_BAD_PARAMETER;
    }


    if (Timeout == ACPI_DO_NOT_WAIT)
    {

        if (!ExTryToAcquireFastMutex((PFAST_MUTEX)Handle))
            return AE_TIME;
    }
    else
    {

        ExAcquireFastMutex((PFAST_MUTEX)Handle);
    }

    return AE_OK;
}
