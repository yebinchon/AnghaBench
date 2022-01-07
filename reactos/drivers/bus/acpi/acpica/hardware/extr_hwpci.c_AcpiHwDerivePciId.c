
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ACPI_STATUS ;
typedef int ACPI_PCI_ID ;
typedef int ACPI_PCI_DEVICE ;
typedef int ACPI_HANDLE ;


 int ACPI_FUNCTION_TRACE (int ) ;
 scalar_t__ ACPI_SUCCESS (int ) ;
 int AE_BAD_PARAMETER ;
 int AcpiHwBuildPciList (int ,int ,int **) ;
 int AcpiHwDeletePciList (int *) ;
 int AcpiHwProcessPciList (int *,int *) ;
 int HwDerivePciId ;
 int return_ACPI_STATUS (int ) ;

ACPI_STATUS
AcpiHwDerivePciId (
    ACPI_PCI_ID *PciId,
    ACPI_HANDLE RootPciDevice,
    ACPI_HANDLE PciRegion)
{
    ACPI_STATUS Status;
    ACPI_PCI_DEVICE *ListHead;


    ACPI_FUNCTION_TRACE (HwDerivePciId);


    if (!PciId)
    {
        return_ACPI_STATUS (AE_BAD_PARAMETER);
    }



    Status = AcpiHwBuildPciList (RootPciDevice, PciRegion, &ListHead);
    if (ACPI_SUCCESS (Status))
    {


        Status = AcpiHwProcessPciList (PciId, ListHead);



        AcpiHwDeletePciList (ListHead);
    }

    return_ACPI_STATUS (Status);
}
