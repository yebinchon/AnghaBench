
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int Address; } ;
typedef int ACPI_STATUS ;
typedef int ACPI_CPU_FLAGS ;


 int ACPI_BITMASK_ALL_FIXED_STATUS ;
 int ACPI_DB_IO ;
 int ACPI_DEBUG_PRINT (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FORMAT_UINT64 (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_REGISTER_PM1_STATUS ;
 int AcpiEvWalkGpeList (int ,int *) ;
 int AcpiGbl_HardwareLock ;
 TYPE_1__ AcpiGbl_XPm1aStatus ;
 int AcpiHwClearGpeBlock ;
 int AcpiHwRegisterWrite (int ,int ) ;
 int AcpiOsAcquireLock (int ) ;
 int AcpiOsReleaseLock (int ,int ) ;
 int HwClearAcpiStatus ;
 int return_ACPI_STATUS (int ) ;

ACPI_STATUS
AcpiHwClearAcpiStatus (
    void)
{
    ACPI_STATUS Status;
    ACPI_CPU_FLAGS LockFlags = 0;


    ACPI_FUNCTION_TRACE (HwClearAcpiStatus);


    ACPI_DEBUG_PRINT ((ACPI_DB_IO, "About to write %04X to %8.8X%8.8X\n",
        ACPI_BITMASK_ALL_FIXED_STATUS,
        ACPI_FORMAT_UINT64 (AcpiGbl_XPm1aStatus.Address)));

    LockFlags = AcpiOsAcquireLock (AcpiGbl_HardwareLock);



    Status = AcpiHwRegisterWrite (ACPI_REGISTER_PM1_STATUS,
        ACPI_BITMASK_ALL_FIXED_STATUS);

    AcpiOsReleaseLock (AcpiGbl_HardwareLock, LockFlags);

    if (ACPI_FAILURE (Status))
    {
        goto Exit;
    }



    Status = AcpiEvWalkGpeList (AcpiHwClearGpeBlock, ((void*)0));

Exit:
    return_ACPI_STATUS (Status);
}
