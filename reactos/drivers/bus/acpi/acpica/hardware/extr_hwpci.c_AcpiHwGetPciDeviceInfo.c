
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ UINT64 ;
typedef void* UINT16 ;
struct TYPE_4__ {void* Bus; int Function; int Device; } ;
typedef scalar_t__ BOOLEAN ;
typedef int ACPI_STATUS ;
typedef TYPE_1__ ACPI_PCI_ID ;
typedef scalar_t__ ACPI_OBJECT_TYPE ;
typedef int ACPI_HANDLE ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_HIWORD (int ) ;
 int ACPI_LODWORD (scalar_t__) ;
 int ACPI_LOWORD (int ) ;
 scalar_t__ ACPI_TYPE_DEVICE ;
 int AE_OK ;
 int AcpiGetType (int ,scalar_t__*) ;
 int AcpiOsReadPciConfiguration (TYPE_1__*,int ,scalar_t__*,int) ;
 int AcpiUtEvaluateNumericObject (int ,int ,scalar_t__*) ;
 scalar_t__ FALSE ;
 int METHOD_NAME__ADR ;
 int PCI_CFG_HEADER_TYPE_REG ;
 int PCI_CFG_PRIMARY_BUS_NUMBER_REG ;
 int PCI_CFG_SECONDARY_BUS_NUMBER_REG ;
 scalar_t__ PCI_HEADER_TYPE_MASK ;
 scalar_t__ PCI_TYPE_BRIDGE ;
 scalar_t__ PCI_TYPE_CARDBUS_BRIDGE ;
 scalar_t__ TRUE ;

__attribute__((used)) static ACPI_STATUS
AcpiHwGetPciDeviceInfo (
    ACPI_PCI_ID *PciId,
    ACPI_HANDLE PciDevice,
    UINT16 *BusNumber,
    BOOLEAN *IsBridge)
{
    ACPI_STATUS Status;
    ACPI_OBJECT_TYPE ObjectType;
    UINT64 ReturnValue;
    UINT64 PciValue;




    Status = AcpiGetType (PciDevice, &ObjectType);
    if (ACPI_FAILURE (Status))
    {
        return (Status);
    }

    if (ObjectType != ACPI_TYPE_DEVICE)
    {
        return (AE_OK);
    }



    Status = AcpiUtEvaluateNumericObject (METHOD_NAME__ADR,
        PciDevice, &ReturnValue);
    if (ACPI_FAILURE (Status))
    {
        return (AE_OK);
    }





    PciId->Device = ACPI_HIWORD (ACPI_LODWORD (ReturnValue));
    PciId->Function = ACPI_LOWORD (ACPI_LODWORD (ReturnValue));





    if (*IsBridge)
    {
        PciId->Bus = *BusNumber;
    }






    *IsBridge = FALSE;
    Status = AcpiOsReadPciConfiguration (PciId,
        PCI_CFG_HEADER_TYPE_REG, &PciValue, 8);
    if (ACPI_FAILURE (Status))
    {
        return (Status);
    }



    PciValue &= PCI_HEADER_TYPE_MASK;

    if ((PciValue != PCI_TYPE_BRIDGE) &&
        (PciValue != PCI_TYPE_CARDBUS_BRIDGE))
    {
        return (AE_OK);
    }



    Status = AcpiOsReadPciConfiguration (PciId,
        PCI_CFG_PRIMARY_BUS_NUMBER_REG, &PciValue, 8);
    if (ACPI_FAILURE (Status))
    {
        return (Status);
    }

    *IsBridge = TRUE;
    PciId->Bus = (UINT16) PciValue;



    Status = AcpiOsReadPciConfiguration (PciId,
        PCI_CFG_SECONDARY_BUS_NUMBER_REG, &PciValue, 8);
    if (ACPI_FAILURE (Status))
    {
        return (Status);
    }

    *BusNumber = (UINT16) PciValue;
    return (AE_OK);
}
