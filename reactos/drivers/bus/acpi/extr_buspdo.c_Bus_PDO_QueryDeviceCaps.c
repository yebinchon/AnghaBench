
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_9__ ;
typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_11__ ;
typedef struct TYPE_14__ TYPE_10__ ;


struct TYPE_23__ {int hardware_id; int bus_address; } ;
struct TYPE_22__ {scalar_t__ hardware_id; int unique_id; int surprise_removal_ok; int removable; int ejectable; int lockable; } ;
struct TYPE_21__ {int show_in_ui; int functional; int enabled; } ;
struct TYPE_20__ {TYPE_4__* states; } ;
struct acpi_device {TYPE_8__ pnp; TYPE_7__ flags; TYPE_6__ status; TYPE_5__ power; } ;
typedef size_t ULONG ;
struct TYPE_24__ {scalar_t__ AcpiHandle; } ;
struct TYPE_18__ {int valid; } ;
struct TYPE_19__ {scalar_t__ latency; TYPE_3__ flags; } ;
struct TYPE_16__ {TYPE_11__* Capabilities; } ;
struct TYPE_17__ {TYPE_1__ DeviceCapabilities; } ;
struct TYPE_15__ {int Version; int Size; scalar_t__* DeviceState; int HardwareDisabled; int NoDisplayInUI; size_t UINumber; void* SilentInstall; void* RawDeviceOK; int Address; int UniqueID; int SurpriseRemovalOK; int Removable; int EjectSupported; int LockSupported; void* WakeFromD3; void* WakeFromD2; void* WakeFromD1; void* WakeFromD0; void* DeviceD2; void* DeviceD1; scalar_t__ DeviceWake; scalar_t__ D3Latency; scalar_t__ D2Latency; scalar_t__ D1Latency; } ;
struct TYPE_14__ {TYPE_2__ Parameters; } ;
typedef TYPE_9__* PPDO_DEVICE_DATA ;
typedef int PIRP ;
typedef TYPE_10__* PIO_STACK_LOCATION ;
typedef TYPE_11__* PDEVICE_CAPABILITIES ;
typedef int NTSTATUS ;
typedef int DEVICE_CAPABILITIES ;


 int ACPI_BUTTON_HID_LID ;
 size_t ACPI_D_STATE_COUNT ;
 int ACPI_PROCESSOR_HID ;




 int ACPI_THERMAL_HID ;
 void* FALSE ;
 TYPE_10__* IoGetCurrentIrpStackLocation (int ) ;
 int PAGED_CODE () ;
 void* PowerDeviceD0 ;
 scalar_t__ PowerDeviceD1 ;
 scalar_t__ PowerDeviceD2 ;
 void* PowerDeviceD3 ;
 size_t PowerSystemSleeping1 ;
 size_t PowerSystemSleeping2 ;
 size_t PowerSystemSleeping3 ;
 size_t PowerSystemWorking ;
 int STATUS_SUCCESS ;
 int STATUS_UNSUCCESSFUL ;
 void* TRUE ;
 int acpi_bus_get_device (scalar_t__,struct acpi_device**) ;
 scalar_t__ strstr (int ,int ) ;

NTSTATUS
Bus_PDO_QueryDeviceCaps(
     PPDO_DEVICE_DATA DeviceData,
      PIRP Irp )
{

    PIO_STACK_LOCATION stack;
    PDEVICE_CAPABILITIES deviceCapabilities;
    struct acpi_device *device = ((void*)0);
    ULONG i;

    PAGED_CODE ();

    if (DeviceData->AcpiHandle)
        acpi_bus_get_device(DeviceData->AcpiHandle, &device);

    stack = IoGetCurrentIrpStackLocation (Irp);




    deviceCapabilities=stack->Parameters.DeviceCapabilities.Capabilities;





    if (deviceCapabilities->Version != 1 ||
            deviceCapabilities->Size < sizeof(DEVICE_CAPABILITIES))
    {
       return STATUS_UNSUCCESSFUL;
    }

    deviceCapabilities->D1Latency = 0;
    deviceCapabilities->D2Latency = 0;
    deviceCapabilities->D3Latency = 0;

    deviceCapabilities->DeviceState[PowerSystemWorking] = PowerDeviceD0;
    deviceCapabilities->DeviceState[PowerSystemSleeping1] = PowerDeviceD3;
    deviceCapabilities->DeviceState[PowerSystemSleeping2] = PowerDeviceD3;
    deviceCapabilities->DeviceState[PowerSystemSleeping3] = PowerDeviceD3;

    for (i = 0; i < ACPI_D_STATE_COUNT && device; i++)
    {
        if (!device->power.states[i].flags.valid)
            continue;

        switch (i)
        {
           case 131:
              deviceCapabilities->DeviceState[PowerSystemWorking] = PowerDeviceD0;
              break;

           case 130:
              deviceCapabilities->DeviceState[PowerSystemSleeping1] = PowerDeviceD1;
              deviceCapabilities->D1Latency = device->power.states[i].latency;
              break;

           case 129:
              deviceCapabilities->DeviceState[PowerSystemSleeping2] = PowerDeviceD2;
              deviceCapabilities->D2Latency = device->power.states[i].latency;
              break;

           case 128:
              deviceCapabilities->DeviceState[PowerSystemSleeping3] = PowerDeviceD3;
              deviceCapabilities->D3Latency = device->power.states[i].latency;
              break;
        }
    }


    deviceCapabilities->DeviceWake = PowerDeviceD1;


    deviceCapabilities->DeviceD1 =
        (deviceCapabilities->DeviceState[PowerSystemSleeping1] == PowerDeviceD1) ? TRUE : FALSE;
    deviceCapabilities->DeviceD2 =
        (deviceCapabilities->DeviceState[PowerSystemSleeping2] == PowerDeviceD2) ? TRUE : FALSE;

    deviceCapabilities->WakeFromD0 = FALSE;
    deviceCapabilities->WakeFromD1 = TRUE;
    deviceCapabilities->WakeFromD2 = FALSE;
    deviceCapabilities->WakeFromD3 = FALSE;

    if (device)
    {
       deviceCapabilities->LockSupported = device->flags.lockable;
       deviceCapabilities->EjectSupported = device->flags.ejectable;
       deviceCapabilities->HardwareDisabled = !device->status.enabled && !device->status.functional;
       deviceCapabilities->Removable = device->flags.removable;
       deviceCapabilities->SurpriseRemovalOK = device->flags.surprise_removal_ok;
       deviceCapabilities->UniqueID = device->flags.unique_id;
       deviceCapabilities->NoDisplayInUI = !device->status.show_in_ui;
       deviceCapabilities->Address = device->pnp.bus_address;
    }

    if (!device ||
        (device->flags.hardware_id &&
         (strstr(device->pnp.hardware_id, ACPI_BUTTON_HID_LID) ||
          strstr(device->pnp.hardware_id, ACPI_THERMAL_HID) ||
          strstr(device->pnp.hardware_id, ACPI_PROCESSOR_HID))))
    {


        deviceCapabilities->RawDeviceOK = TRUE;
    }

    deviceCapabilities->SilentInstall = FALSE;
    deviceCapabilities->UINumber = (ULONG)-1;

    return STATUS_SUCCESS;

}
