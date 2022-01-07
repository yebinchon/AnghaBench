
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ACPI_STATUS ;


 int ACPI_EXCEPTION (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int AE_INFO ;
 int AE_OK ;
 int AcpiEvFixedEventInitialize () ;
 int AcpiEvGpeInitialize () ;
 scalar_t__ AcpiGbl_ReducedHardware ;
 int EvInitializeEvents ;
 int return_ACPI_STATUS (int ) ;

ACPI_STATUS
AcpiEvInitializeEvents (
    void)
{
    ACPI_STATUS Status;


    ACPI_FUNCTION_TRACE (EvInitializeEvents);




    if (AcpiGbl_ReducedHardware)
    {
        return_ACPI_STATUS (AE_OK);
    }






    Status = AcpiEvFixedEventInitialize ();
    if (ACPI_FAILURE (Status))
    {
        ACPI_EXCEPTION ((AE_INFO, Status,
            "Unable to initialize fixed events"));
        return_ACPI_STATUS (Status);
    }

    Status = AcpiEvGpeInitialize ();
    if (ACPI_FAILURE (Status))
    {
        ACPI_EXCEPTION ((AE_INFO, Status,
            "Unable to initialize general purpose events"));
        return_ACPI_STATUS (Status);
    }

    return_ACPI_STATUS (Status);
}
