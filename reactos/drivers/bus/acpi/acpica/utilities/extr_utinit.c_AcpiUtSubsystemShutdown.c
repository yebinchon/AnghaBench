
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ACPI_DB_INFO ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_ERROR (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int AE_INFO ;
 int AcpiEvTerminate () ;
 scalar_t__ AcpiGbl_Shutdown ;
 scalar_t__ AcpiGbl_StartupFlags ;
 int AcpiNsTerminate () ;
 int AcpiTbTerminate () ;
 int AcpiUtDeleteCaches () ;
 int AcpiUtInterfaceTerminate () ;
 int AcpiUtTerminate () ;
 scalar_t__ TRUE ;
 int UtSubsystemShutdown ;
 int return_VOID ;

void
AcpiUtSubsystemShutdown (
    void)
{
    ACPI_FUNCTION_TRACE (UtSubsystemShutdown);




    if (AcpiGbl_Shutdown)
    {
        ACPI_ERROR ((AE_INFO, "ACPI Subsystem is already terminated"));
        return_VOID;
    }



    AcpiGbl_Shutdown = TRUE;
    AcpiGbl_StartupFlags = 0;
    ACPI_DEBUG_PRINT ((ACPI_DB_INFO, "Shutting down ACPI Subsystem\n"));





    AcpiEvTerminate ();



    AcpiUtInterfaceTerminate ();




    AcpiNsTerminate ();



    AcpiTbTerminate ();



    AcpiUtTerminate ();



    (void) AcpiUtDeleteCaches ();
    return_VOID;
}
