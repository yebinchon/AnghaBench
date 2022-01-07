
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_9__ ;
typedef struct TYPE_25__ TYPE_8__ ;
typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_11__ ;
typedef struct TYPE_16__ TYPE_10__ ;


typedef int temp ;
struct TYPE_24__ {char* hardware_id; char* unique_id; char* device_name; TYPE_2__* cid_list; } ;
struct TYPE_23__ {int compatible_ids; int hardware_id; int unique_id; } ;
struct acpi_device {TYPE_7__ pnp; TYPE_6__ flags; } ;
typedef char WCHAR ;
typedef void* ULONG_PTR ;
typedef int ULONG ;
struct TYPE_22__ {int Status; void* Information; } ;
struct TYPE_26__ {TYPE_5__ IoStatus; } ;
struct TYPE_25__ {int AcpiHandle; } ;
struct TYPE_20__ {int IdType; } ;
struct TYPE_21__ {TYPE_3__ QueryId; } ;
struct TYPE_19__ {int Count; TYPE_1__* Ids; } ;
struct TYPE_18__ {char* String; } ;
struct TYPE_17__ {int Length; char* Buffer; } ;
struct TYPE_16__ {TYPE_4__ Parameters; } ;
typedef char* PWCHAR ;
typedef TYPE_8__* PPDO_DEVICE_DATA ;
typedef TYPE_9__* PIRP ;
typedef TYPE_10__* PIO_STACK_LOCATION ;
typedef int NTSTATUS ;






 int DPRINT (char*,char*) ;
 char* ExAllocatePoolWithTag (int ,int,char) ;
 TYPE_10__* IoGetCurrentIrpStackLocation (TYPE_9__*) ;
 int NT_ASSERT (int) ;
 int PAGED_CODE () ;
 int PagedPool ;
 TYPE_11__ ProcessorHardwareIds ;
 int ProcessorIdString ;
 int RtlCopyMemory (char*,char*,int) ;
 int STATUS_INSUFFICIENT_RESOURCES ;
 int STATUS_NOT_SUPPORTED ;
 int STATUS_SUCCESS ;
 char UNICODE_NULL ;
 int acpi_bus_get_device (int ,struct acpi_device**) ;
 int strcmp (char*,char*) ;
 int swprintf (char*,char*,...) ;
 int wcscpy (char*,int ) ;
 int wcslen (int ) ;

NTSTATUS
Bus_PDO_QueryDeviceId(
     PPDO_DEVICE_DATA DeviceData,
      PIRP Irp )
{
    PIO_STACK_LOCATION stack;
    PWCHAR buffer, src;
    WCHAR temp[256];
    ULONG length, i;
    NTSTATUS status = STATUS_SUCCESS;
    struct acpi_device *Device;

    PAGED_CODE ();

    stack = IoGetCurrentIrpStackLocation (Irp);

    switch (stack->Parameters.QueryId.IdType) {

    case 130:



        if (DeviceData->AcpiHandle)
        {
            acpi_bus_get_device(DeviceData->AcpiHandle, &Device);

            if (strcmp(Device->pnp.hardware_id, "Processor") == 0)
            {
                length = wcslen(ProcessorIdString);
                wcscpy(temp, ProcessorIdString);
            }
            else
            {
                length = swprintf(temp,
                                  L"ACPI\\%hs",
                                  Device->pnp.hardware_id);
            }
        }
        else
        {




            length = swprintf(temp,
                              L"ACPI\\FixedButton");
        }

        temp[length++] = UNICODE_NULL;

        NT_ASSERT(length * sizeof(WCHAR) <= sizeof(temp));

        buffer = ExAllocatePoolWithTag(PagedPool, length * sizeof(WCHAR), 'IpcA');

        if (!buffer) {
           status = STATUS_INSUFFICIENT_RESOURCES;
           break;
        }

        RtlCopyMemory (buffer, temp, length * sizeof(WCHAR));
        Irp->IoStatus.Information = (ULONG_PTR) buffer;
        DPRINT("BusQueryDeviceID: %ls\n",buffer);
        break;

    case 128:




        if(DeviceData->AcpiHandle)
        {
           acpi_bus_get_device(DeviceData->AcpiHandle, &Device);

           if (Device->flags.unique_id)
              length = swprintf(temp,
                                L"%hs",
                                Device->pnp.unique_id);
           else

              length = swprintf(temp, L"%ls", L"0");
        }
        else
        {

           length = swprintf(temp, L"%ls", L"0");
        }

        temp[length++] = UNICODE_NULL;

        NT_ASSERT(length * sizeof(WCHAR) <= sizeof(temp));

        buffer = ExAllocatePoolWithTag(PagedPool, length * sizeof(WCHAR), 'IpcA');
        if (!buffer) {
           status = STATUS_INSUFFICIENT_RESOURCES;
           break;
        }

        RtlCopyMemory (buffer, temp, length * sizeof (WCHAR));
        DPRINT("BusQueryInstanceID: %ls\n",buffer);
        Irp->IoStatus.Information = (ULONG_PTR) buffer;
        break;

    case 129:


        length = 0;
        status = STATUS_NOT_SUPPORTED;


        if (DeviceData->AcpiHandle)
        {
            acpi_bus_get_device(DeviceData->AcpiHandle, &Device);

            if (!Device->flags.hardware_id)
            {

                break;
            }

            DPRINT("Device name: %s\n", Device->pnp.device_name);
            DPRINT("Hardware ID: %s\n", Device->pnp.hardware_id);

            if (strcmp(Device->pnp.hardware_id, "Processor") == 0)
            {
                length = ProcessorHardwareIds.Length / sizeof(WCHAR);
                src = ProcessorHardwareIds.Buffer;
            }
            else
            {
                length += swprintf(&temp[length],
                                   L"ACPI\\%hs",
                                   Device->pnp.hardware_id);
                temp[length++] = UNICODE_NULL;

                length += swprintf(&temp[length],
                                   L"*%hs",
                                   Device->pnp.hardware_id);
                temp[length++] = UNICODE_NULL;
                temp[length++] = UNICODE_NULL;
                src = temp;
            }
        }
        else
        {
            length += swprintf(&temp[length],
                               L"ACPI\\FixedButton");
            temp[length++] = UNICODE_NULL;

            length += swprintf(&temp[length],
                               L"*FixedButton");
            temp[length++] = UNICODE_NULL;
            temp[length++] = UNICODE_NULL;
            src = temp;
        }

        NT_ASSERT(length * sizeof(WCHAR) <= sizeof(temp));

        buffer = ExAllocatePoolWithTag(PagedPool, length * sizeof(WCHAR), 'IpcA');

        if (!buffer) {
           status = STATUS_INSUFFICIENT_RESOURCES;
           break;
        }

        RtlCopyMemory (buffer, src, length * sizeof(WCHAR));
        Irp->IoStatus.Information = (ULONG_PTR) buffer;
        DPRINT("BusQueryHardwareIDs: %ls\n",buffer);
        status = STATUS_SUCCESS;
        break;

    case 131:


        length = 0;
        status = STATUS_NOT_SUPPORTED;


        if (DeviceData->AcpiHandle)
        {
            acpi_bus_get_device(DeviceData->AcpiHandle, &Device);

            if (!Device->flags.hardware_id)
            {

                break;
            }

            DPRINT("Device name: %s\n", Device->pnp.device_name);
            DPRINT("Hardware ID: %s\n", Device->pnp.hardware_id);

            if (strcmp(Device->pnp.hardware_id, "Processor") == 0)
            {
                length += swprintf(&temp[length],
                                   L"ACPI\\%hs",
                                   Device->pnp.hardware_id);
                temp[length++] = UNICODE_NULL;

                length += swprintf(&temp[length],
                                   L"*%hs",
                                   Device->pnp.hardware_id);
                temp[length++] = UNICODE_NULL;
                temp[length++] = UNICODE_NULL;
            }
            else if (Device->flags.compatible_ids)
            {
                for (i = 0; i < Device->pnp.cid_list->Count; i++)
                {
                    length += swprintf(&temp[length],
                                   L"ACPI\\%hs",
                                   Device->pnp.cid_list->Ids[i].String);
                    temp[length++] = UNICODE_NULL;

                    length += swprintf(&temp[length],
                                   L"*%hs",
                                   Device->pnp.cid_list->Ids[i].String);
                    temp[length++] = UNICODE_NULL;
                }

                temp[length++] = UNICODE_NULL;
            }
            else
            {

                break;
            }

            NT_ASSERT(length * sizeof(WCHAR) <= sizeof(temp));

            buffer = ExAllocatePoolWithTag(PagedPool, length * sizeof(WCHAR), 'IpcA');
            if (!buffer)
            {
                status = STATUS_INSUFFICIENT_RESOURCES;
                break;
            }

            RtlCopyMemory (buffer, temp, length * sizeof(WCHAR));
            Irp->IoStatus.Information = (ULONG_PTR) buffer;
            DPRINT("BusQueryCompatibleIDs: %ls\n",buffer);
            status = STATUS_SUCCESS;
        }
        break;

    default:
        status = Irp->IoStatus.Status;
    }
    return status;
}
