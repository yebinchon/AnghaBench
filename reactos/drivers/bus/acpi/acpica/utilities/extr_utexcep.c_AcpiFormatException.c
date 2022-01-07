
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* Name; } ;
typedef int ACPI_STATUS ;
typedef TYPE_1__ ACPI_EXCEPTION_INFO ;


 int ACPI_ERROR (int ) ;
 int ACPI_FUNCTION_ENTRY () ;
 int AE_INFO ;
 TYPE_1__* AcpiUtValidateException (int ) ;

const char *
AcpiFormatException (
    ACPI_STATUS Status)
{
    const ACPI_EXCEPTION_INFO *Exception;


    ACPI_FUNCTION_ENTRY ();


    Exception = AcpiUtValidateException (Status);
    if (!Exception)
    {


        ACPI_ERROR ((AE_INFO,
            "Unknown exception code: 0x%8.8X", Status));

        return ("UNKNOWN_STATUS_CODE");
    }

    return (Exception->Name);
}
