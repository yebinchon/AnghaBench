
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int AslCompilerId; int OemTableId; int OemId; int Signature; } ;
typedef TYPE_1__ ACPI_TABLE_HEADER ;


 int ACPI_NAMESEG_SIZE ;
 int ACPI_OEM_ID_SIZE ;
 int ACPI_OEM_TABLE_ID_SIZE ;
 int AcpiTbFixString (int ,int ) ;
 int memcpy (TYPE_1__*,TYPE_1__*,int) ;

__attribute__((used)) static void
AcpiTbCleanupTableHeader (
    ACPI_TABLE_HEADER *OutHeader,
    ACPI_TABLE_HEADER *Header)
{

    memcpy (OutHeader, Header, sizeof (ACPI_TABLE_HEADER));

    AcpiTbFixString (OutHeader->Signature, ACPI_NAMESEG_SIZE);
    AcpiTbFixString (OutHeader->OemId, ACPI_OEM_ID_SIZE);
    AcpiTbFixString (OutHeader->OemTableId, ACPI_OEM_TABLE_ID_SIZE);
    AcpiTbFixString (OutHeader->AslCompilerId, ACPI_NAMESEG_SIZE);
}
