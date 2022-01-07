
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ ULONG_PTR ;
struct TYPE_6__ {scalar_t__ Information; } ;
struct TYPE_8__ {TYPE_1__ IoStatus; } ;
struct TYPE_7__ {scalar_t__ BusNumber; int LegacyBusType; int BusTypeGuid; } ;
typedef TYPE_2__* PPNP_BUS_INFORMATION ;
typedef int PPDO_DEVICE_DATA ;
typedef int PNP_BUS_INFORMATION ;
typedef TYPE_3__* PIRP ;
typedef int NTSTATUS ;


 TYPE_2__* ExAllocatePoolWithTag (int ,int,char) ;
 int GUID_ACPI_INTERFACE_STANDARD ;
 int InternalPowerBus ;
 int PAGED_CODE () ;
 int PagedPool ;
 int STATUS_INSUFFICIENT_RESOURCES ;
 int STATUS_SUCCESS ;

NTSTATUS
Bus_PDO_QueryBusInformation(
     PPDO_DEVICE_DATA DeviceData,
      PIRP Irp )
{

    PPNP_BUS_INFORMATION busInfo;

    PAGED_CODE ();

    busInfo = ExAllocatePoolWithTag(PagedPool,
                                    sizeof(PNP_BUS_INFORMATION),
                                    'IpcA');

    if (busInfo == ((void*)0)) {
      return STATUS_INSUFFICIENT_RESOURCES;
    }

    busInfo->BusTypeGuid = GUID_ACPI_INTERFACE_STANDARD;

    busInfo->LegacyBusType = InternalPowerBus;

    busInfo->BusNumber = 0;

    Irp->IoStatus.Information = (ULONG_PTR)busInfo;

    return STATUS_SUCCESS;
}
