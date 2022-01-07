
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT64 ;
typedef int ACPI_STATUS ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_IS_OCTAL_DIGIT (char) ;
 int AE_OCTAL_OVERFLOW ;
 int AE_OK ;
 int AcpiUtInsertDigit (int *,int,char) ;

ACPI_STATUS
AcpiUtConvertOctalString (
    char *String,
    UINT64 *ReturnValuePtr)
{
    UINT64 AccumulatedValue = 0;
    ACPI_STATUS Status = AE_OK;




    while (*String)
    {


        if (!(ACPI_IS_OCTAL_DIGIT (*String)))
        {
            break;
        }



        Status = AcpiUtInsertDigit (&AccumulatedValue, 8, *String);
        if (ACPI_FAILURE (Status))
        {
            Status = AE_OCTAL_OVERFLOW;
            break;
        }

        String++;
    }



    *ReturnValuePtr = AccumulatedValue;
    return (Status);
}
