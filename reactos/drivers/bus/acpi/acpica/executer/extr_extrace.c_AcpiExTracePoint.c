
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT8 ;
typedef scalar_t__ BOOLEAN ;
typedef int ACPI_TRACE_EVENT_TYPE ;


 int ACPI_DB_TRACE_POINT ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_FUNCTION_NAME (int ) ;
 int AcpiExGetTraceEventName (int ) ;
 int ExTracePoint ;

void
AcpiExTracePoint (
    ACPI_TRACE_EVENT_TYPE Type,
    BOOLEAN Begin,
    UINT8 *Aml,
    char *Pathname)
{

    ACPI_FUNCTION_NAME (ExTracePoint);


    if (Pathname)
    {
        ACPI_DEBUG_PRINT ((ACPI_DB_TRACE_POINT,
            "%s %s [0x%p:%s] execution.\n",
            AcpiExGetTraceEventName (Type), Begin ? "Begin" : "End",
            Aml, Pathname));
    }
    else
    {
        ACPI_DEBUG_PRINT ((ACPI_DB_TRACE_POINT,
            "%s %s [0x%p] execution.\n",
            AcpiExGetTraceEventName (Type), Begin ? "Begin" : "End",
            Aml));
    }
}
