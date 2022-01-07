
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_45__ TYPE_9__ ;
typedef struct TYPE_44__ TYPE_8__ ;
typedef struct TYPE_43__ TYPE_7__ ;
typedef struct TYPE_42__ TYPE_6__ ;
typedef struct TYPE_41__ TYPE_5__ ;
typedef struct TYPE_40__ TYPE_4__ ;
typedef struct TYPE_39__ TYPE_3__ ;
typedef struct TYPE_38__ TYPE_2__ ;
typedef struct TYPE_37__ TYPE_1__ ;
typedef struct TYPE_36__ TYPE_13__ ;
typedef struct TYPE_35__ TYPE_10__ ;


struct TYPE_38__ {int hardware_id; } ;
struct TYPE_37__ {int hardware_id; } ;
struct acpi_device {TYPE_2__ pnp; TYPE_1__ flags; } ;
struct TYPE_39__ {int Type; } ;
struct TYPE_40__ {TYPE_3__ QueryDeviceRelations; } ;
struct TYPE_45__ {int MinorFunction; TYPE_4__ Parameters; } ;
struct TYPE_41__ {int Status; } ;
struct TYPE_44__ {TYPE_5__ IoStatus; } ;
struct TYPE_43__ {void* DeviceState; } ;
struct TYPE_35__ {int DevicePnPState; void* DevicePowerState; int Self; } ;
struct TYPE_36__ {int Length; } ;
struct TYPE_42__ {TYPE_10__ Common; scalar_t__ AcpiHandle; TYPE_13__ InterfaceName; } ;
typedef TYPE_6__* PPDO_DEVICE_DATA ;
typedef TYPE_7__ POWER_STATE ;
typedef TYPE_8__* PIRP ;
typedef TYPE_9__* PIO_STACK_LOCATION ;
typedef int PDEVICE_OBJECT ;
typedef int NTSTATUS ;


 int ACPI_BUTTON_HID_LID ;
 int ACPI_PROCESSOR_HID ;
 int ACPI_STATE_D0 ;
 int ACPI_STATE_D3 ;
 int ACPI_SUCCESS (int ) ;
 int ACPI_THERMAL_HID ;
 int Bus_PDO_QueryBusInformation (TYPE_6__*,TYPE_8__*) ;
 int Bus_PDO_QueryDeviceCaps (TYPE_6__*,TYPE_8__*) ;
 int Bus_PDO_QueryDeviceId (TYPE_6__*,TYPE_8__*) ;
 int Bus_PDO_QueryDeviceRelations (TYPE_6__*,TYPE_8__*) ;
 int Bus_PDO_QueryDeviceText (TYPE_6__*,TYPE_8__*) ;
 int Bus_PDO_QueryInterface (TYPE_6__*,TYPE_8__*) ;
 int Bus_PDO_QueryResourceRequirements (TYPE_6__*,TYPE_8__*) ;
 int Bus_PDO_QueryResources (TYPE_6__*,TYPE_8__*) ;
 int DPRINT (char*,int ) ;
 int DPRINT1 (char*,scalar_t__) ;
 int DbgDeviceRelationString (int ) ;
 int DevicePowerState ;
 int FALSE ;
 int GUID_DEVICE_LID ;
 int GUID_DEVICE_PROCESSOR ;
 int GUID_DEVICE_SYS_BUTTON ;
 int GUID_DEVICE_THERMAL_ZONE ;
 int IO_NO_INCREMENT ;
 int IoCompleteRequest (TYPE_8__*,int ) ;
 int IoRegisterDeviceInterface (int ,int *,int *,TYPE_13__*) ;
 int IoSetDeviceInterfaceState (TYPE_13__*,int ) ;
 int NT_SUCCESS (int ) ;
 int PAGED_CODE () ;
 int PoSetPowerState (int ,int ,TYPE_7__) ;
 void* PowerDeviceD0 ;
 void* PowerDeviceD3 ;
 int RESTORE_PREVIOUS_PNP_STATE (TYPE_10__) ;
 int RemovalPending ;
 int SET_NEW_PNP_STATE (TYPE_10__,int ) ;
 int STATUS_SUCCESS ;
 int STATUS_UNSUCCESSFUL ;
 int Started ;
 int StopPending ;
 int Stopped ;
 int TRUE ;
 int acpi_bus_get_device (scalar_t__,struct acpi_device**) ;
 int acpi_bus_power_manageable (scalar_t__) ;
 int acpi_bus_set_power (scalar_t__,int ) ;
 int strstr (int ,int ) ;

NTSTATUS
Bus_PDO_PnP (
     PDEVICE_OBJECT DeviceObject,
     PIRP Irp,
     PIO_STACK_LOCATION IrpStack,
     PPDO_DEVICE_DATA DeviceData
    )
{
    NTSTATUS status;
    POWER_STATE state;
    struct acpi_device *device = ((void*)0);

    PAGED_CODE ();

    if (DeviceData->AcpiHandle)
        acpi_bus_get_device(DeviceData->AcpiHandle, &device);







    switch (IrpStack->MinorFunction) {

    case 129:





        if (DeviceData->AcpiHandle && acpi_bus_power_manageable(DeviceData->AcpiHandle) &&
            !ACPI_SUCCESS(acpi_bus_set_power(DeviceData->AcpiHandle, ACPI_STATE_D0)))
        {
            DPRINT1("Device %x failed to start!\n", DeviceData->AcpiHandle);
            status = STATUS_UNSUCCESSFUL;
            break;
        }

        DeviceData->InterfaceName.Length = 0;
        status = STATUS_SUCCESS;

        if (!device)
        {
            status = IoRegisterDeviceInterface(DeviceData->Common.Self,
                                               &GUID_DEVICE_SYS_BUTTON,
                                               ((void*)0),
                                               &DeviceData->InterfaceName);
        }
        else if (device->flags.hardware_id &&
                 strstr(device->pnp.hardware_id, ACPI_THERMAL_HID))
        {
            status = IoRegisterDeviceInterface(DeviceData->Common.Self,
                                               &GUID_DEVICE_THERMAL_ZONE,
                                               ((void*)0),
                                               &DeviceData->InterfaceName);
        }
        else if (device->flags.hardware_id &&
                 strstr(device->pnp.hardware_id, ACPI_BUTTON_HID_LID))
        {
            status = IoRegisterDeviceInterface(DeviceData->Common.Self,
                                               &GUID_DEVICE_LID,
                                               ((void*)0),
                                               &DeviceData->InterfaceName);
        }
        else if (device->flags.hardware_id &&
                 strstr(device->pnp.hardware_id, ACPI_PROCESSOR_HID))
        {
            status = IoRegisterDeviceInterface(DeviceData->Common.Self,
                                               &GUID_DEVICE_PROCESSOR,
                                               ((void*)0),
                                               &DeviceData->InterfaceName);
        }


        if (NT_SUCCESS(status) && DeviceData->InterfaceName.Length != 0)
            IoSetDeviceInterfaceState(&DeviceData->InterfaceName, TRUE);

        state.DeviceState = PowerDeviceD0;
        PoSetPowerState(DeviceData->Common.Self, DevicePowerState, state);
        DeviceData->Common.DevicePowerState = PowerDeviceD0;
        SET_NEW_PNP_STATE(DeviceData->Common, Started);
        status = STATUS_SUCCESS;
        break;

    case 128:

        if (DeviceData->InterfaceName.Length != 0)
            IoSetDeviceInterfaceState(&DeviceData->InterfaceName, FALSE);





        if (DeviceData->AcpiHandle && acpi_bus_power_manageable(DeviceData->AcpiHandle) &&
            !ACPI_SUCCESS(acpi_bus_set_power(DeviceData->AcpiHandle, ACPI_STATE_D3)))
        {
            DPRINT1("Device %x failed to stop!\n", DeviceData->AcpiHandle);
            status = STATUS_UNSUCCESSFUL;
            break;
        }

        state.DeviceState = PowerDeviceD3;
        PoSetPowerState(DeviceData->Common.Self, DevicePowerState, state);
        DeviceData->Common.DevicePowerState = PowerDeviceD3;
        SET_NEW_PNP_STATE(DeviceData->Common, Stopped);
        status = STATUS_SUCCESS;
        break;


    case 131:







        SET_NEW_PNP_STATE(DeviceData->Common, StopPending);
        status = STATUS_SUCCESS;
        break;

    case 142:
        if (StopPending == DeviceData->Common.DevicePnPState)
        {



            RESTORE_PREVIOUS_PNP_STATE(DeviceData->Common);
        }
        status = STATUS_SUCCESS;
        break;

    case 130:





        if (DeviceData->InterfaceName.Length != 0)
            IoSetDeviceInterfaceState(&DeviceData->InterfaceName, FALSE);

        if (DeviceData->AcpiHandle && acpi_bus_power_manageable(DeviceData->AcpiHandle) &&
            !ACPI_SUCCESS(acpi_bus_set_power(DeviceData->AcpiHandle, ACPI_STATE_D3)))
        {
            DPRINT1("Device %x failed to enter D3!\n", DeviceData->AcpiHandle);
            state.DeviceState = PowerDeviceD3;
            PoSetPowerState(DeviceData->Common.Self, DevicePowerState, state);
            DeviceData->Common.DevicePowerState = PowerDeviceD3;
        }

        SET_NEW_PNP_STATE(DeviceData->Common, Stopped);
        status = STATUS_SUCCESS;
        break;

    case 134:
        SET_NEW_PNP_STATE(DeviceData->Common, RemovalPending);
        status = STATUS_SUCCESS;
        break;

    case 143:
        if (RemovalPending == DeviceData->Common.DevicePnPState)
        {
            RESTORE_PREVIOUS_PNP_STATE(DeviceData->Common);
        }
        status = STATUS_SUCCESS;
        break;

    case 139:






        status = Bus_PDO_QueryDeviceCaps(DeviceData, Irp);

        break;

    case 136:


        status = Bus_PDO_QueryDeviceId(DeviceData, Irp);

        break;

    case 138:

        DPRINT("\tQueryDeviceRelation Type: %s\n",DbgDeviceRelationString( IrpStack->Parameters.QueryDeviceRelations.Type));


        status = Bus_PDO_QueryDeviceRelations(DeviceData, Irp);

        break;

    case 137:

        status = Bus_PDO_QueryDeviceText(DeviceData, Irp);

        break;

    case 133:

        status = Bus_PDO_QueryResources(DeviceData, Irp);

        break;

    case 132:

        status = Bus_PDO_QueryResourceRequirements(DeviceData, Irp);

        break;

    case 140:

        status = Bus_PDO_QueryBusInformation(DeviceData, Irp);

        break;

    case 135:

        status = Bus_PDO_QueryInterface(DeviceData, Irp);

        break;


    case 141:
    default:





        status = Irp->IoStatus.Status;

        break;
    }

    Irp->IoStatus.Status = status;
    IoCompleteRequest (Irp, IO_NO_INCREMENT);

    return status;
}
