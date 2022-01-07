
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ACPI_STATUS ;


 int ACPI_EVENT_GLOBAL ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int AcpiEvGlobalLockHandler ;
 int AcpiGbl_GlobalLockPendingLock ;
 int AcpiGbl_GlobalLockPresent ;
 int AcpiOsDeleteLock (int ) ;
 int AcpiRemoveFixedEventHandler (int ,int ) ;
 int EvRemoveGlobalLockHandler ;
 int FALSE ;
 int return_ACPI_STATUS (int ) ;

ACPI_STATUS
AcpiEvRemoveGlobalLockHandler (
    void)
{
    ACPI_STATUS Status;


    ACPI_FUNCTION_TRACE (EvRemoveGlobalLockHandler);


    AcpiGbl_GlobalLockPresent = FALSE;
    Status = AcpiRemoveFixedEventHandler (ACPI_EVENT_GLOBAL,
        AcpiEvGlobalLockHandler);

    AcpiOsDeleteLock (AcpiGbl_GlobalLockPendingLock);
    return_ACPI_STATUS (Status);
}
