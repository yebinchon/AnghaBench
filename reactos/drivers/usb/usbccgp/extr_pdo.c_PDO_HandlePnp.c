
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_32__ TYPE_9__ ;
typedef struct TYPE_31__ TYPE_8__ ;
typedef struct TYPE_30__ TYPE_7__ ;
typedef struct TYPE_29__ TYPE_6__ ;
typedef struct TYPE_28__ TYPE_5__ ;
typedef struct TYPE_27__ TYPE_4__ ;
typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;


typedef size_t ULONG ;
struct TYPE_32__ {scalar_t__ DeviceExtension; } ;
struct TYPE_26__ {int Capabilities; } ;
struct TYPE_27__ {TYPE_3__ DeviceCapabilities; } ;
struct TYPE_31__ {int MinorFunction; TYPE_4__ Parameters; } ;
struct TYPE_28__ {scalar_t__ Status; } ;
struct TYPE_30__ {TYPE_5__ IoStatus; } ;
struct TYPE_24__ {scalar_t__ IsFDO; } ;
struct TYPE_29__ {int NextDeviceObject; int Capabilities; TYPE_2__* FDODeviceExtension; TYPE_1__ Common; } ;
struct TYPE_25__ {size_t FunctionDescriptorCount; TYPE_9__** ChildPDO; } ;
typedef TYPE_6__* PPDO_DEVICE_EXTENSION ;
typedef TYPE_7__* PIRP ;
typedef TYPE_8__* PIO_STACK_LOCATION ;
typedef TYPE_9__* PDEVICE_OBJECT ;
typedef scalar_t__ NTSTATUS ;
typedef int DEVICE_CAPABILITIES ;


 int ASSERT (int) ;
 int DPRINT (char*) ;
 scalar_t__ FALSE ;
 int IO_NO_INCREMENT ;
 scalar_t__ IoCallDriver (int ,TYPE_7__*) ;
 int IoCompleteRequest (TYPE_7__*,int ) ;
 int IoDeleteDevice (TYPE_9__*) ;
 TYPE_8__* IoGetCurrentIrpStackLocation (TYPE_7__*) ;
 int IoSkipCurrentIrpStackLocation (TYPE_7__*) ;
 int RtlCopyMemory (int ,int *,int) ;
 scalar_t__ STATUS_PENDING ;
 scalar_t__ STATUS_SUCCESS ;
 size_t TRUE ;
 scalar_t__ USBCCGP_PdoHandleDeviceRelations (TYPE_9__*,TYPE_7__*) ;
 scalar_t__ USBCCGP_PdoHandleQueryDeviceText (TYPE_9__*,TYPE_7__*) ;
 scalar_t__ USBCCGP_PdoHandleQueryId (TYPE_9__*,TYPE_7__*) ;

NTSTATUS
PDO_HandlePnp(
    PDEVICE_OBJECT DeviceObject,
    PIRP Irp)
{
    PIO_STACK_LOCATION IoStack;
    PPDO_DEVICE_EXTENSION PDODeviceExtension;
    NTSTATUS Status;
    ULONG Index, bFound;




    IoStack = IoGetCurrentIrpStackLocation(Irp);




    PDODeviceExtension = (PPDO_DEVICE_EXTENSION)DeviceObject->DeviceExtension;




    ASSERT(PDODeviceExtension->Common.IsFDO == FALSE);

    switch(IoStack->MinorFunction)
    {
        case 135:
        {



            Status = USBCCGP_PdoHandleDeviceRelations(DeviceObject, Irp);
            break;
        }
        case 134:
        {



            Status = USBCCGP_PdoHandleQueryDeviceText(DeviceObject, Irp);
            break;
        }
        case 133:
        {



            Status = USBCCGP_PdoHandleQueryId(DeviceObject, Irp);
            break;
        }
        case 129:
        {



            bFound = FALSE;
            for(Index = 0; Index < PDODeviceExtension->FDODeviceExtension->FunctionDescriptorCount; Index++)
            {
                if (PDODeviceExtension->FDODeviceExtension->ChildPDO[Index] == DeviceObject)
                {



                    PDODeviceExtension->FDODeviceExtension->ChildPDO[Index] = ((void*)0);
                    bFound = TRUE;
                    break;
                }
            }




            Irp->IoStatus.Status = STATUS_SUCCESS;
            IoCompleteRequest(Irp, IO_NO_INCREMENT);

            if (bFound)
            {



                IoDeleteDevice(DeviceObject);
            }
            return STATUS_SUCCESS;
        }
        case 136:
        {



            RtlCopyMemory(IoStack->Parameters.DeviceCapabilities.Capabilities, &PDODeviceExtension->Capabilities, sizeof(DEVICE_CAPABILITIES));


            Irp->IoStatus.Status = STATUS_SUCCESS;
            IoCompleteRequest(Irp, IO_NO_INCREMENT);
            return STATUS_SUCCESS;
        }
        case 131:
        case 130:
        {



            Status = STATUS_SUCCESS;
            break;
        }
        case 128:
        {



            DPRINT("[USBCCGP] PDO IRP_MN_START\n");
            Status = STATUS_SUCCESS;
            break;
        }
        case 132:
        {



            IoSkipCurrentIrpStackLocation(Irp);
            return IoCallDriver(PDODeviceExtension->NextDeviceObject, Irp);
        }
        default:
        {



            Status = Irp->IoStatus.Status;
            break;
        }
    }




    if (Status != STATUS_PENDING)
    {



        Irp->IoStatus.Status = Status;




        IoCompleteRequest(Irp, IO_NO_INCREMENT);
    }




    return Status;

}
