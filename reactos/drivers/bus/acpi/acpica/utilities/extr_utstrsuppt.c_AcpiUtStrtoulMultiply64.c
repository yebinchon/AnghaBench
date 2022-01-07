
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT64 ;
typedef scalar_t__ UINT32 ;
typedef int ACPI_STATUS ;


 scalar_t__ ACPI_UINT32_MAX ;
 int ACPI_UINT64_MAX ;
 int AE_NUMERIC_OVERFLOW ;
 int AE_OK ;
 int AcpiGbl_IntegerBitWidth ;
 int AcpiUtShortDivide (int ,scalar_t__,scalar_t__*,int *) ;

__attribute__((used)) static ACPI_STATUS
AcpiUtStrtoulMultiply64 (
    UINT64 Multiplicand,
    UINT32 Base,
    UINT64 *OutProduct)
{
    UINT64 Product;
    UINT64 Quotient;




    *OutProduct = 0;
    if (!Multiplicand || !Base)
    {
        return (AE_OK);
    }
    AcpiUtShortDivide (ACPI_UINT64_MAX, Base, &Quotient, ((void*)0));
    if (Multiplicand > Quotient)
    {
        return (AE_NUMERIC_OVERFLOW);
    }

    Product = Multiplicand * Base;



    if ((AcpiGbl_IntegerBitWidth == 32) && (Product > ACPI_UINT32_MAX))
    {
        return (AE_NUMERIC_OVERFLOW);
    }

    *OutProduct = Product;
    return (AE_OK);
}
