
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t UINT32 ;
typedef int ACPI_BIT_REGISTER_INFO ;


 size_t ACPI_BITREG_MAX ;
 int ACPI_ERROR (int ) ;
 int ACPI_FUNCTION_ENTRY () ;
 int AE_INFO ;
 int * AcpiGbl_BitRegisterInfo ;

ACPI_BIT_REGISTER_INFO *
AcpiHwGetBitRegisterInfo (
    UINT32 RegisterId)
{
    ACPI_FUNCTION_ENTRY ();


    if (RegisterId > ACPI_BITREG_MAX)
    {
        ACPI_ERROR ((AE_INFO, "Invalid BitRegister ID: 0x%X", RegisterId));
        return (((void*)0));
    }

    return (&AcpiGbl_BitRegisterInfo[RegisterId]);
}
