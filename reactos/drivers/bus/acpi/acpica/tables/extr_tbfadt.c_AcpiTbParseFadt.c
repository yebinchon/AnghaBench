
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int UINT32 ;
struct TYPE_8__ {scalar_t__ XFacs; scalar_t__ Facs; scalar_t__ XDsdt; } ;
struct TYPE_7__ {TYPE_1__* Tables; } ;
struct TYPE_6__ {int Length; } ;
typedef int ACPI_TABLE_HEADER ;
typedef TYPE_1__ ACPI_TABLE_DESC ;
typedef int ACPI_STATUS ;
typedef int ACPI_PHYSICAL_ADDRESS ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_TABLE_ORIGIN_INTERNAL_PHYSICAL ;
 int AcpiGbl_DsdtIndex ;
 TYPE_5__ AcpiGbl_FADT ;
 int AcpiGbl_FacsIndex ;
 size_t AcpiGbl_FadtIndex ;
 int AcpiGbl_ReducedHardware ;
 TYPE_4__ AcpiGbl_RootTableList ;
 int AcpiGbl_XFacsIndex ;
 int AcpiTbCreateLocalFadt (int *,int ) ;
 int AcpiTbGetTable (TYPE_1__*,int **) ;
 int AcpiTbInstallStandardTable (int ,int ,int ,int ,int *) ;
 int AcpiTbPutTable (TYPE_1__*) ;
 int AcpiTbVerifyChecksum (int *,int ) ;
 int FALSE ;
 int TRUE ;

void
AcpiTbParseFadt (
    void)
{
    UINT32 Length;
    ACPI_TABLE_HEADER *Table;
    ACPI_TABLE_DESC *FadtDesc;
    ACPI_STATUS Status;
    FadtDesc = &AcpiGbl_RootTableList.Tables[AcpiGbl_FadtIndex];
    Status = AcpiTbGetTable (FadtDesc, &Table);
    if (ACPI_FAILURE (Status))
    {
        return;
    }
    Length = FadtDesc->Length;





    (void) AcpiTbVerifyChecksum (Table, Length);



    AcpiTbCreateLocalFadt (Table, Length);



    AcpiTbPutTable (FadtDesc);



    AcpiTbInstallStandardTable (
        (ACPI_PHYSICAL_ADDRESS) AcpiGbl_FADT.XDsdt,
        ACPI_TABLE_ORIGIN_INTERNAL_PHYSICAL, FALSE, TRUE,
        &AcpiGbl_DsdtIndex);



    if (!AcpiGbl_ReducedHardware)
    {
        if (AcpiGbl_FADT.Facs)
        {
            AcpiTbInstallStandardTable (
                (ACPI_PHYSICAL_ADDRESS) AcpiGbl_FADT.Facs,
                ACPI_TABLE_ORIGIN_INTERNAL_PHYSICAL, FALSE, TRUE,
                &AcpiGbl_FacsIndex);
        }
        if (AcpiGbl_FADT.XFacs)
        {
            AcpiTbInstallStandardTable (
                (ACPI_PHYSICAL_ADDRESS) AcpiGbl_FADT.XFacs,
                ACPI_TABLE_ORIGIN_INTERNAL_PHYSICAL, FALSE, TRUE,
                &AcpiGbl_XFacsIndex);
        }
    }
}
