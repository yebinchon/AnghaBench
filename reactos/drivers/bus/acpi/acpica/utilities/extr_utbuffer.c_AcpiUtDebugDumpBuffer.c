
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT8 ;
typedef int UINT32 ;


 int ACPI_LV_TABLES ;
 int AcpiDbgLayer ;
 int AcpiDbgLevel ;
 int AcpiUtDumpBuffer (int *,int,int,int ) ;

void
AcpiUtDebugDumpBuffer (
    UINT8 *Buffer,
    UINT32 Count,
    UINT32 Display,
    UINT32 ComponentId)
{



    if (!((ACPI_LV_TABLES & AcpiDbgLevel) &&
        (ComponentId & AcpiDbgLayer)))
    {
        return;
    }

    AcpiUtDumpBuffer (Buffer, Count, Display, 0);
}
