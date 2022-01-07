
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT32 ;
typedef scalar_t__ ACPI_STATUS ;
typedef int ACPI_IO_ADDRESS ;


 scalar_t__ ACPI_FAILURE (scalar_t__) ;
 scalar_t__ ACPI_SUCCESS (scalar_t__) ;
 int ACPI_UINT16_MAX ;
 scalar_t__ AE_AML_ILLEGAL_ADDRESS ;
 scalar_t__ AE_OK ;
 scalar_t__ AcpiGbl_TruncateIoAddresses ;
 scalar_t__ AcpiHwValidateIoRequest (int ,int) ;
 scalar_t__ AcpiOsReadPort (int ,int*,int) ;

ACPI_STATUS
AcpiHwReadPort (
    ACPI_IO_ADDRESS Address,
    UINT32 *Value,
    UINT32 Width)
{
    ACPI_STATUS Status;
    UINT32 OneByte;
    UINT32 i;




    if (AcpiGbl_TruncateIoAddresses)
    {
        Address &= ACPI_UINT16_MAX;
    }



    Status = AcpiHwValidateIoRequest (Address, Width);
    if (ACPI_SUCCESS (Status))
    {
        Status = AcpiOsReadPort (Address, Value, Width);
        return (Status);
    }

    if (Status != AE_AML_ILLEGAL_ADDRESS)
    {
        return (Status);
    }






    for (i = 0, *Value = 0; i < Width; i += 8)
    {


        if (AcpiHwValidateIoRequest (Address, 8) == AE_OK)
        {
            Status = AcpiOsReadPort (Address, &OneByte, 8);
            if (ACPI_FAILURE (Status))
            {
                return (Status);
            }

            *Value |= (OneByte << i);
        }

        Address++;
    }

    return (AE_OK);
}
