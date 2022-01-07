
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ Revision; int Length; int OemId; } ;
struct TYPE_7__ {int AslCompilerRevision; int AslCompilerId; int OemRevision; int OemTableId; int OemId; int Revision; int Length; int Signature; } ;
typedef TYPE_1__ ACPI_TABLE_HEADER ;
typedef int ACPI_PHYSICAL_ADDRESS ;


 TYPE_5__* ACPI_CAST_PTR (int ,TYPE_1__*) ;
 scalar_t__ ACPI_COMPARE_NAMESEG (int ,int ) ;
 int ACPI_FORMAT_UINT64 (int ) ;
 int ACPI_INFO (char*) ;
 int ACPI_OEM_ID_SIZE ;
 int ACPI_SIG_FACS ;
 int ACPI_TABLE_RSDP ;
 scalar_t__ ACPI_VALIDATE_RSDP_SIG (int ) ;
 int AcpiTbCleanupTableHeader (TYPE_1__*,TYPE_1__*) ;
 int AcpiTbFixString (int ,int ) ;
 int memcpy (int ,int ,int ) ;

void
AcpiTbPrintTableHeader (
    ACPI_PHYSICAL_ADDRESS Address,
    ACPI_TABLE_HEADER *Header)
{
    ACPI_TABLE_HEADER LocalHeader;


    if (ACPI_COMPARE_NAMESEG (Header->Signature, ACPI_SIG_FACS))
    {


        ACPI_INFO (("%-4.4s 0x%8.8X%8.8X %06X",
            Header->Signature, ACPI_FORMAT_UINT64 (Address),
            Header->Length));
    }
    else if (ACPI_VALIDATE_RSDP_SIG (Header->Signature))
    {


        memcpy (LocalHeader.OemId, ACPI_CAST_PTR (ACPI_TABLE_RSDP,
            Header)->OemId, ACPI_OEM_ID_SIZE);
        AcpiTbFixString (LocalHeader.OemId, ACPI_OEM_ID_SIZE);

        ACPI_INFO (("RSDP 0x%8.8X%8.8X %06X (v%.2d %-6.6s)",
            ACPI_FORMAT_UINT64 (Address),
            (ACPI_CAST_PTR (ACPI_TABLE_RSDP, Header)->Revision > 0) ?
                ACPI_CAST_PTR (ACPI_TABLE_RSDP, Header)->Length : 20,
            ACPI_CAST_PTR (ACPI_TABLE_RSDP, Header)->Revision,
            LocalHeader.OemId));
    }
    else
    {


        AcpiTbCleanupTableHeader (&LocalHeader, Header);

        ACPI_INFO ((
            "%-4.4s 0x%8.8X%8.8X"
            " %06X (v%.2d %-6.6s %-8.8s %08X %-4.4s %08X)",
            LocalHeader.Signature, ACPI_FORMAT_UINT64 (Address),
            LocalHeader.Length, LocalHeader.Revision, LocalHeader.OemId,
            LocalHeader.OemTableId, LocalHeader.OemRevision,
            LocalHeader.AslCompilerId, LocalHeader.AslCompilerRevision));
    }
}
