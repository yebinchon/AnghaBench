
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Lo; int Hi; } ;
struct TYPE_4__ {int Full; TYPE_1__ Part; } ;
typedef TYPE_2__ UINT64_OVERLAY ;
typedef int UINT64 ;
typedef scalar_t__ UINT32 ;
typedef int ACPI_STATUS ;


 int ACPI_DIV_64_BY_32 (scalar_t__,int ,scalar_t__,int ,scalar_t__) ;
 int ACPI_ERROR (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int AE_AML_DIVIDE_BY_ZERO ;
 int AE_INFO ;
 int AE_OK ;
 int UtShortDivide ;
 int return_ACPI_STATUS (int ) ;

ACPI_STATUS
AcpiUtShortDivide (
    UINT64 Dividend,
    UINT32 Divisor,
    UINT64 *OutQuotient,
    UINT32 *OutRemainder)
{
    UINT64_OVERLAY DividendOvl;
    UINT64_OVERLAY Quotient;
    UINT32 Remainder32;


    ACPI_FUNCTION_TRACE (UtShortDivide);




    if (Divisor == 0)
    {
        ACPI_ERROR ((AE_INFO, "Divide by zero"));
        return_ACPI_STATUS (AE_AML_DIVIDE_BY_ZERO);
    }

    DividendOvl.Full = Dividend;





    ACPI_DIV_64_BY_32 (0, DividendOvl.Part.Hi, Divisor,
        Quotient.Part.Hi, Remainder32);

    ACPI_DIV_64_BY_32 (Remainder32, DividendOvl.Part.Lo, Divisor,
        Quotient.Part.Lo, Remainder32);



    if (OutQuotient)
    {
        *OutQuotient = Quotient.Full;
    }
    if (OutRemainder)
    {
        *OutRemainder = Remainder32;
    }

    return_ACPI_STATUS (AE_OK);
}
