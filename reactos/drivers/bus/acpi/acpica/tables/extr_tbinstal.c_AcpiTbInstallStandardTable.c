
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_7__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int UINT8 ;
typedef int UINT32 ;
struct TYPE_9__ {int Ascii; } ;
struct TYPE_8__ {int Pointer; TYPE_7__ Signature; } ;
typedef int BOOLEAN ;
typedef TYPE_1__ ACPI_TABLE_DESC ;
typedef scalar_t__ ACPI_STATUS ;
typedef int ACPI_PHYSICAL_ADDRESS ;


 scalar_t__ ACPI_COMPARE_NAMESEG (TYPE_7__*,int ) ;
 int ACPI_ERROR (int ) ;
 scalar_t__ ACPI_FAILURE (scalar_t__) ;
 int ACPI_FORMAT_UINT64 (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_INFO (char*) ;
 int ACPI_MTX_TABLES ;
 int ACPI_SIG_SSDT ;
 int ACPI_TABLE_EVENT_INSTALL ;
 scalar_t__ AE_CTRL_TERMINATE ;
 int AE_INFO ;
 scalar_t__ AE_OK ;
 scalar_t__ AcpiGbl_DisableSsdtTableInstall ;
 scalar_t__ AcpiTbAcquireTempTable (TYPE_1__*,int ,int ) ;
 int AcpiTbInstallTableWithOverride (TYPE_1__*,int ,int *) ;
 int AcpiTbNotifyTable (int ,int ) ;
 int AcpiTbReleaseTempTable (TYPE_1__*) ;
 int AcpiTbUninstallTable (TYPE_1__*) ;
 scalar_t__ AcpiTbVerifyTempTable (TYPE_1__*,int *,int *) ;
 int AcpiUtAcquireMutex (int ) ;
 int AcpiUtReleaseMutex (int ) ;
 int TbInstallStandardTable ;
 int return_ACPI_STATUS (scalar_t__) ;

ACPI_STATUS
AcpiTbInstallStandardTable (
    ACPI_PHYSICAL_ADDRESS Address,
    UINT8 Flags,
    BOOLEAN Reload,
    BOOLEAN Override,
    UINT32 *TableIndex)
{
    UINT32 i;
    ACPI_STATUS Status = AE_OK;
    ACPI_TABLE_DESC NewTableDesc;


    ACPI_FUNCTION_TRACE (TbInstallStandardTable);




    Status = AcpiTbAcquireTempTable (&NewTableDesc, Address, Flags);
    if (ACPI_FAILURE (Status))
    {
        ACPI_ERROR ((AE_INFO,
            "Could not acquire table length at %8.8X%8.8X",
            ACPI_FORMAT_UINT64 (Address)));
        return_ACPI_STATUS (Status);
    }





    if (!Reload &&
        AcpiGbl_DisableSsdtTableInstall &&
        ACPI_COMPARE_NAMESEG (&NewTableDesc.Signature, ACPI_SIG_SSDT))
    {
        ACPI_INFO ((
            "Ignoring installation of %4.4s at %8.8X%8.8X",
            NewTableDesc.Signature.Ascii, ACPI_FORMAT_UINT64 (Address)));
        goto ReleaseAndExit;
    }



    (void) AcpiUtAcquireMutex (ACPI_MTX_TABLES);



    Status = AcpiTbVerifyTempTable (&NewTableDesc, ((void*)0), &i);
    if (ACPI_FAILURE (Status))
    {
        if (Status == AE_CTRL_TERMINATE)
        {
            AcpiTbUninstallTable (&NewTableDesc);
            (void) AcpiUtReleaseMutex (ACPI_MTX_TABLES);
            *TableIndex = i;
            return_ACPI_STATUS (AE_OK);
        }
        goto UnlockAndExit;
    }



    AcpiTbInstallTableWithOverride (&NewTableDesc, Override, TableIndex);



    (void) AcpiUtReleaseMutex (ACPI_MTX_TABLES);
    AcpiTbNotifyTable (ACPI_TABLE_EVENT_INSTALL, NewTableDesc.Pointer);
    (void) AcpiUtAcquireMutex (ACPI_MTX_TABLES);

UnlockAndExit:



    (void) AcpiUtReleaseMutex (ACPI_MTX_TABLES);

ReleaseAndExit:



    AcpiTbReleaseTempTable (&NewTableDesc);
    return_ACPI_STATUS (Status);
}
