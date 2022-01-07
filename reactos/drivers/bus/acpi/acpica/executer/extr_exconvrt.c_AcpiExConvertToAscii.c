
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT8 ;
typedef int UINT64 ;
typedef size_t UINT32 ;
typedef int UINT16 ;
typedef int BOOLEAN ;


 size_t ACPI_ASCII_ZERO ;
 int ACPI_FUNCTION_ENTRY () ;
 size_t ACPI_MAX32_DECIMAL_DIGITS ;
 size_t ACPI_MAX64_DECIMAL_DIGITS ;
 size_t ACPI_MAX8_DECIMAL_DIGITS ;
 int ACPI_MUL_4 (size_t) ;
 int AcpiUtHexToAsciiChar (int ,int ) ;
 int AcpiUtShortDivide (int ,int,int *,size_t*) ;
 int FALSE ;
 int TRUE ;

__attribute__((used)) static UINT32
AcpiExConvertToAscii (
    UINT64 Integer,
    UINT16 Base,
    UINT8 *String,
    UINT8 DataWidth)
{
    UINT64 Digit;
    UINT32 i;
    UINT32 j;
    UINT32 k = 0;
    UINT32 HexLength;
    UINT32 DecimalLength;
    UINT32 Remainder;
    BOOLEAN SupressZeros;


    ACPI_FUNCTION_ENTRY ();


    switch (Base)
    {
    case 10:



        switch (DataWidth)
        {
        case 1:

            DecimalLength = ACPI_MAX8_DECIMAL_DIGITS;
            break;

        case 4:

            DecimalLength = ACPI_MAX32_DECIMAL_DIGITS;
            break;

        case 8:
        default:

            DecimalLength = ACPI_MAX64_DECIMAL_DIGITS;
            break;
        }

        SupressZeros = TRUE;
        Remainder = 0;

        for (i = DecimalLength; i > 0; i--)
        {


            Digit = Integer;
            for (j = 0; j < i; j++)
            {
                (void) AcpiUtShortDivide (Digit, 10, &Digit, &Remainder);
            }



            if (Remainder != 0)
            {
                SupressZeros = FALSE;
            }

            if (!SupressZeros)
            {
                String[k] = (UINT8) (ACPI_ASCII_ZERO + Remainder);
                k++;
            }
        }
        break;

    case 16:



        HexLength = (DataWidth * 2);
        for (i = 0, j = (HexLength-1); i < HexLength; i++, j--)
        {


            String[k] = (UINT8)
                AcpiUtHexToAsciiChar (Integer, ACPI_MUL_4 (j));
            k++;
        }
        break;

    default:
        return (0);
    }







    if (!k)
    {
        String [0] = ACPI_ASCII_ZERO;
        k = 1;
    }

    String [k] = 0;
    return ((UINT32) k);
}
