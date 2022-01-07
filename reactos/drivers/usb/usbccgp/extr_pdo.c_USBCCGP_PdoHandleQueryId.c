
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_9__ ;
typedef struct TYPE_22__ TYPE_8__ ;
typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int WCHAR ;
typedef void* ULONG_PTR ;
struct TYPE_23__ {scalar_t__ DeviceExtension; } ;
struct TYPE_15__ {scalar_t__ IdType; } ;
struct TYPE_16__ {TYPE_1__ QueryId; } ;
struct TYPE_22__ {TYPE_2__ Parameters; } ;
struct TYPE_18__ {void* Information; int Status; } ;
struct TYPE_21__ {TYPE_4__ IoStatus; } ;
struct TYPE_20__ {TYPE_3__* FunctionDescriptor; int NextDeviceObject; } ;
struct TYPE_19__ {int Length; int Buffer; } ;
struct TYPE_17__ {char* FunctionNumber; TYPE_5__ CompatibleId; TYPE_5__ HardwareId; } ;
typedef int PVOID ;
typedef TYPE_5__* PUNICODE_STRING ;
typedef TYPE_6__* PPDO_DEVICE_EXTENSION ;
typedef TYPE_7__* PIRP ;
typedef TYPE_8__* PIO_STACK_LOCATION ;
typedef TYPE_9__* PDEVICE_OBJECT ;
typedef int NTSTATUS ;
typedef char* LPWSTR ;


 int ASSERT (void*) ;
 char* AllocateItem (int ,int) ;
 scalar_t__ BusQueryCompatibleIDs ;
 scalar_t__ BusQueryDeviceID ;
 scalar_t__ BusQueryHardwareIDs ;
 scalar_t__ BusQueryInstanceID ;
 int DPRINT (char*,char*) ;
 int ExFreePool (int ) ;
 TYPE_8__* IoGetCurrentIrpStackLocation (TYPE_7__*) ;
 scalar_t__ NT_SUCCESS (int ) ;
 int NonPagedPool ;
 int RtlCopyMemory (char*,int ,int) ;
 int STATUS_INSUFFICIENT_RESOURCES ;
 int STATUS_SUCCESS ;
 char UNICODE_NULL ;
 int USBCCGP_SyncForwardIrp (int ,TYPE_7__*) ;
 int swprintf (char*,char*,char*,...) ;
 int wcslen (char*) ;

NTSTATUS
USBCCGP_PdoHandleQueryId(
    PDEVICE_OBJECT DeviceObject,
    PIRP Irp)
{
    PIO_STACK_LOCATION IoStack;
    PUNICODE_STRING DeviceString = ((void*)0);
    PPDO_DEVICE_EXTENSION PDODeviceExtension;
    NTSTATUS Status;
    LPWSTR Buffer;




    IoStack = IoGetCurrentIrpStackLocation(Irp);




    PDODeviceExtension = (PPDO_DEVICE_EXTENSION)DeviceObject->DeviceExtension;


    if (IoStack->Parameters.QueryId.IdType == BusQueryDeviceID)
    {



        Status = USBCCGP_SyncForwardIrp(PDODeviceExtension->NextDeviceObject, Irp);
        if (NT_SUCCESS(Status))
        {



            Buffer = AllocateItem(NonPagedPool, (wcslen((LPWSTR)Irp->IoStatus.Information) + 7) * sizeof(WCHAR));
            if (Buffer)
            {



                ASSERT(Irp->IoStatus.Information);
                swprintf(Buffer, L"%s&MI_%02x", (LPWSTR)Irp->IoStatus.Information, PDODeviceExtension->FunctionDescriptor->FunctionNumber);
                DPRINT("BusQueryDeviceID %S\n", Buffer);

                ExFreePool((PVOID)Irp->IoStatus.Information);
                Irp->IoStatus.Information = (ULONG_PTR)Buffer;
            }
            else
            {



                Status = STATUS_INSUFFICIENT_RESOURCES;
            }
        }
        return Status;
    }
    else if (IoStack->Parameters.QueryId.IdType == BusQueryHardwareIDs)
    {



        DeviceString = &PDODeviceExtension->FunctionDescriptor->HardwareId;
    }
    else if (IoStack->Parameters.QueryId.IdType == BusQueryInstanceID)
    {



        Buffer = AllocateItem(NonPagedPool, 5 * sizeof(WCHAR));
        if (!Buffer)
        {



            return STATUS_INSUFFICIENT_RESOURCES;
        }




        swprintf(Buffer, L"%04x", PDODeviceExtension->FunctionDescriptor->FunctionNumber);
        Irp->IoStatus.Information = (ULONG_PTR)Buffer;
        return STATUS_SUCCESS;
    }
    else if (IoStack->Parameters.QueryId.IdType == BusQueryCompatibleIDs)
    {



        DeviceString = &PDODeviceExtension->FunctionDescriptor->CompatibleId;
    }
    else
    {



        return Irp->IoStatus.Status;
    }




    ASSERT(DeviceString != ((void*)0));




    Buffer = AllocateItem(NonPagedPool, DeviceString->Length + sizeof(WCHAR));
    if (!Buffer)
    {



        return STATUS_INSUFFICIENT_RESOURCES;
    }




    RtlCopyMemory(Buffer, DeviceString->Buffer, DeviceString->Length);
    Buffer[DeviceString->Length / sizeof(WCHAR)] = UNICODE_NULL;
    Irp->IoStatus.Information = (ULONG_PTR)Buffer;

    return STATUS_SUCCESS;
}
