
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int UINT16 ;
struct TYPE_7__ {struct TYPE_7__* Next; int Device; } ;
struct TYPE_6__ {int Function; int Device; int Bus; int Segment; } ;
typedef int BOOLEAN ;
typedef int ACPI_STATUS ;
typedef TYPE_1__ ACPI_PCI_ID ;
typedef TYPE_2__ ACPI_PCI_DEVICE ;


 int ACPI_DB_OPREGION ;
 int ACPI_DEBUG_PRINT (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_NAME (int ) ;
 int AE_OK ;
 int AcpiHwGetPciDeviceInfo (TYPE_1__*,int ,int *,int *) ;
 int HwProcessPciList ;
 int TRUE ;

__attribute__((used)) static ACPI_STATUS
AcpiHwProcessPciList (
    ACPI_PCI_ID *PciId,
    ACPI_PCI_DEVICE *ListHead)
{
    ACPI_STATUS Status = AE_OK;
    ACPI_PCI_DEVICE *Info;
    UINT16 BusNumber;
    BOOLEAN IsBridge = TRUE;


    ACPI_FUNCTION_NAME (HwProcessPciList);


    ACPI_DEBUG_PRINT ((ACPI_DB_OPREGION,
        "Input PciId:  Seg %4.4X Bus %4.4X Dev %4.4X Func %4.4X\n",
        PciId->Segment, PciId->Bus, PciId->Device, PciId->Function));

    BusNumber = PciId->Bus;
    Info = ListHead;
    while (Info)
    {
        Status = AcpiHwGetPciDeviceInfo (PciId, Info->Device,
            &BusNumber, &IsBridge);
        if (ACPI_FAILURE (Status))
        {
            return (Status);
        }

        Info = Info->Next;
    }

    ACPI_DEBUG_PRINT ((ACPI_DB_OPREGION,
        "Output PciId: Seg %4.4X Bus %4.4X Dev %4.4X Func %4.4X "
        "Status %X BusNumber %X IsBridge %X\n",
        PciId->Segment, PciId->Bus, PciId->Device, PciId->Function,
        Status, BusNumber, IsBridge));

    return (AE_OK);
}
