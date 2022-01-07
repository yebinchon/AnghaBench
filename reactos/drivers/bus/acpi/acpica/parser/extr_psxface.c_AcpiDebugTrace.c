
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* UINT32 ;
typedef int ACPI_STATUS ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_MTX_NAMESPACE ;
 int AE_OK ;
 void* AcpiGbl_TraceDbgLayer ;
 void* AcpiGbl_TraceDbgLevel ;
 void* AcpiGbl_TraceFlags ;
 char const* AcpiGbl_TraceMethodName ;
 int AcpiUtAcquireMutex (int ) ;
 int AcpiUtReleaseMutex (int ) ;

ACPI_STATUS
AcpiDebugTrace (
    const char *Name,
    UINT32 DebugLevel,
    UINT32 DebugLayer,
    UINT32 Flags)
{
    ACPI_STATUS Status;


    Status = AcpiUtAcquireMutex (ACPI_MTX_NAMESPACE);
    if (ACPI_FAILURE (Status))
    {
        return (Status);
    }

    AcpiGbl_TraceMethodName = Name;
    AcpiGbl_TraceFlags = Flags;
    AcpiGbl_TraceDbgLevel = DebugLevel;
    AcpiGbl_TraceDbgLayer = DebugLayer;
    Status = AE_OK;

    (void) AcpiUtReleaseMutex (ACPI_MTX_NAMESPACE);
    return (Status);
}
