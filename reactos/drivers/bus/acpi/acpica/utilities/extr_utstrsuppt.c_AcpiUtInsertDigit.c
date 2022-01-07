
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT64 ;
typedef int UINT32 ;
typedef int ACPI_STATUS ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int AcpiUtAsciiCharToHex (int) ;
 int AcpiUtStrtoulAdd64 (int ,int ,int *) ;
 int AcpiUtStrtoulMultiply64 (int ,int ,int *) ;

__attribute__((used)) static ACPI_STATUS
AcpiUtInsertDigit (
    UINT64 *AccumulatedValue,
    UINT32 Base,
    int AsciiDigit)
{
    ACPI_STATUS Status;
    UINT64 Product;




    Status = AcpiUtStrtoulMultiply64 (*AccumulatedValue, Base, &Product);
    if (ACPI_FAILURE (Status))
    {
        return (Status);
    }



    Status = AcpiUtStrtoulAdd64 (Product, AcpiUtAsciiCharToHex (AsciiDigit),
        AccumulatedValue);

    return (Status);
}
