
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ UINT32 ;
struct TYPE_4__ {int Length; int Version; scalar_t__ XFirmwareWakingVector; scalar_t__ FirmwareWakingVector; } ;
typedef TYPE_1__ ACPI_TABLE_FACS ;
typedef int ACPI_STATUS ;
typedef scalar_t__ ACPI_PHYSICAL_ADDRESS ;


 int ACPI_FUNCTION_TRACE (int (*) (TYPE_1__*,scalar_t__,scalar_t__)) ;
 int AE_OK ;
 int return_ACPI_STATUS (int ) ;

__attribute__((used)) static ACPI_STATUS
AcpiHwSetFirmwareWakingVector (
    ACPI_TABLE_FACS *Facs,
    ACPI_PHYSICAL_ADDRESS PhysicalAddress,
    ACPI_PHYSICAL_ADDRESS PhysicalAddress64)
{
    ACPI_FUNCTION_TRACE (AcpiHwSetFirmwareWakingVector);
    Facs->FirmwareWakingVector = (UINT32) PhysicalAddress;

    if (Facs->Length > 32)
    {
        if (Facs->Version >= 1)
        {


            Facs->XFirmwareWakingVector = PhysicalAddress64;
        }
        else
        {


            Facs->XFirmwareWakingVector = 0;
        }
    }

    return_ACPI_STATUS (AE_OK);
}
