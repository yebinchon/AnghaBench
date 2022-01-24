#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_32__   TYPE_9__ ;
typedef  struct TYPE_31__   TYPE_8__ ;
typedef  struct TYPE_30__   TYPE_7__ ;
typedef  struct TYPE_29__   TYPE_6__ ;
typedef  struct TYPE_28__   TYPE_5__ ;
typedef  struct TYPE_27__   TYPE_4__ ;
typedef  struct TYPE_26__   TYPE_3__ ;
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_1__ ;

/* Type definitions */
typedef  size_t ULONG ;
struct TYPE_32__ {scalar_t__ DeviceExtension; } ;
struct TYPE_26__ {int /*<<< orphan*/  Capabilities; } ;
struct TYPE_27__ {TYPE_3__ DeviceCapabilities; } ;
struct TYPE_31__ {int MinorFunction; TYPE_4__ Parameters; } ;
struct TYPE_28__ {scalar_t__ Status; } ;
struct TYPE_30__ {TYPE_5__ IoStatus; } ;
struct TYPE_24__ {scalar_t__ IsFDO; } ;
struct TYPE_29__ {int /*<<< orphan*/  NextDeviceObject; int /*<<< orphan*/  Capabilities; TYPE_2__* FDODeviceExtension; TYPE_1__ Common; } ;
struct TYPE_25__ {size_t FunctionDescriptorCount; TYPE_9__** ChildPDO; } ;
typedef  TYPE_6__* PPDO_DEVICE_EXTENSION ;
typedef  TYPE_7__* PIRP ;
typedef  TYPE_8__* PIO_STACK_LOCATION ;
typedef  TYPE_9__* PDEVICE_OBJECT ;
typedef  scalar_t__ NTSTATUS ;
typedef  int /*<<< orphan*/  DEVICE_CAPABILITIES ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  IO_NO_INCREMENT ; 
#define  IRP_MN_QUERY_CAPABILITIES 136 
#define  IRP_MN_QUERY_DEVICE_RELATIONS 135 
#define  IRP_MN_QUERY_DEVICE_TEXT 134 
#define  IRP_MN_QUERY_ID 133 
#define  IRP_MN_QUERY_INTERFACE 132 
#define  IRP_MN_QUERY_REMOVE_DEVICE 131 
#define  IRP_MN_QUERY_STOP_DEVICE 130 
#define  IRP_MN_REMOVE_DEVICE 129 
#define  IRP_MN_START_DEVICE 128 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_7__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_9__*) ; 
 TYPE_8__* FUNC5 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 scalar_t__ STATUS_PENDING ; 
 scalar_t__ STATUS_SUCCESS ; 
 size_t TRUE ; 
 scalar_t__ FUNC8 (TYPE_9__*,TYPE_7__*) ; 
 scalar_t__ FUNC9 (TYPE_9__*,TYPE_7__*) ; 
 scalar_t__ FUNC10 (TYPE_9__*,TYPE_7__*) ; 

NTSTATUS
FUNC11(
    PDEVICE_OBJECT DeviceObject,
    PIRP Irp)
{
    PIO_STACK_LOCATION IoStack;
    PPDO_DEVICE_EXTENSION PDODeviceExtension;
    NTSTATUS Status;
    ULONG Index, bFound;

    //
    // get current stack location
    //
    IoStack = FUNC5(Irp);

    //
    // get device extension
    //
    PDODeviceExtension = (PPDO_DEVICE_EXTENSION)DeviceObject->DeviceExtension;

    //
    // sanity check
    //
    FUNC0(PDODeviceExtension->Common.IsFDO == FALSE);

    switch(IoStack->MinorFunction)
    {
        case IRP_MN_QUERY_DEVICE_RELATIONS:
        {
            //
            // handle device relations
            //
            Status = FUNC8(DeviceObject, Irp);
            break;
        }
        case IRP_MN_QUERY_DEVICE_TEXT:
        {
            //
            // handle query device text
            //
            Status = FUNC9(DeviceObject, Irp);
            break;
        }
        case IRP_MN_QUERY_ID:
        {
            //
            // handle request
            //
            Status = FUNC10(DeviceObject, Irp);
            break;
        }
        case IRP_MN_REMOVE_DEVICE:
        {
            //
            // remove us from the fdo's pdo list
            //
            bFound = FALSE;
            for(Index = 0; Index < PDODeviceExtension->FDODeviceExtension->FunctionDescriptorCount; Index++)
            {
                if (PDODeviceExtension->FDODeviceExtension->ChildPDO[Index] == DeviceObject)
                {
                    //
                    // remove us
                    //
                    PDODeviceExtension->FDODeviceExtension->ChildPDO[Index] = NULL;
                    bFound = TRUE;
                    break;
                }
            }

            //
            // Complete the IRP
            //
            Irp->IoStatus.Status = STATUS_SUCCESS;
            FUNC3(Irp, IO_NO_INCREMENT);

            if (bFound)
            {
                //
                // Delete the device object
                //
                FUNC4(DeviceObject);
            }
            return STATUS_SUCCESS;
        }
        case IRP_MN_QUERY_CAPABILITIES:
        {
            //
            // copy device capabilities
            //
            FUNC7(IoStack->Parameters.DeviceCapabilities.Capabilities, &PDODeviceExtension->Capabilities, sizeof(DEVICE_CAPABILITIES));

            /* Complete the IRP */
            Irp->IoStatus.Status = STATUS_SUCCESS;
            FUNC3(Irp, IO_NO_INCREMENT);
            return STATUS_SUCCESS;
        }
        case IRP_MN_QUERY_REMOVE_DEVICE:
        case IRP_MN_QUERY_STOP_DEVICE:
        {
            //
            // sure
            //
            Status = STATUS_SUCCESS;
            break;
        }
        case IRP_MN_START_DEVICE:
        {
            //
            // no-op for PDO
            //
            FUNC1("[USBCCGP] PDO IRP_MN_START\n");
            Status = STATUS_SUCCESS;
            break;
        }
        case IRP_MN_QUERY_INTERFACE:
        {
            //
            // forward to lower device object
            //
            FUNC6(Irp);
            return FUNC2(PDODeviceExtension->NextDeviceObject, Irp);
        }
        default:
        {
            //
            // do nothing
            //
            Status = Irp->IoStatus.Status;
            break;
        }
    }

    //
    // complete request
    //
    if (Status != STATUS_PENDING)
    {
        //
        // store result
        //
        Irp->IoStatus.Status = Status;

        //
        // complete request
        //
        FUNC3(Irp, IO_NO_INCREMENT);
    }

    //
    // done processing
    //
    return Status;

}