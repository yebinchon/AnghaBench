#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_8__ ;
typedef  struct TYPE_26__   TYPE_6__ ;
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;
typedef  struct TYPE_20__   TYPE_10__ ;

/* Type definitions */
struct TYPE_23__ {scalar_t__ Argument1; } ;
struct TYPE_24__ {TYPE_3__ Others; } ;
struct TYPE_27__ {TYPE_4__ Parameters; } ;
struct TYPE_25__ {scalar_t__ Information; int /*<<< orphan*/  Status; } ;
struct TYPE_26__ {int RetryCount; struct TYPE_26__* cbw; TYPE_10__* FDODeviceExtension; struct TYPE_26__* Irp; struct TYPE_26__* Self; struct TYPE_26__* PDODeviceExtension; int /*<<< orphan*/  LowerDeviceObject; TYPE_5__ IoStatus; scalar_t__ Cdb; } ;
struct TYPE_22__ {TYPE_1__* Pipes; } ;
struct TYPE_21__ {int /*<<< orphan*/  PipeHandle; } ;
struct TYPE_20__ {size_t BulkInPipeIndex; size_t BulkOutPipeIndex; int /*<<< orphan*/ * LastTimerActiveSrb; int /*<<< orphan*/  TimerWorkQueueEnabled; void* SrbErrorHandlingActive; TYPE_2__* InterfaceInformation; int /*<<< orphan*/  LowerDeviceObject; } ;
typedef  TYPE_6__* PSCSI_REQUEST_BLOCK ;
typedef  TYPE_6__* PIRP_CONTEXT ;
typedef  TYPE_8__* PIO_STACK_LOCATION ;
typedef  int /*<<< orphan*/  PDEVICE_OBJECT ;
typedef  TYPE_6__* PCDB ;
typedef  int /*<<< orphan*/  NTSTATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,...) ; 
 void* FALSE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*) ; 
 int /*<<< orphan*/  IO_NO_INCREMENT ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 TYPE_8__* FUNC4 (TYPE_6__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*,TYPE_6__*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

NTSTATUS
FUNC11(
    PDEVICE_OBJECT DeviceObject,
    PIRP_CONTEXT Context)
{
    NTSTATUS Status = STATUS_SUCCESS;
    PIO_STACK_LOCATION Stack;
    PSCSI_REQUEST_BLOCK Request;
    PCDB pCDB;

    //
    // sanity checks
    //
    FUNC0(Context);
    FUNC0(Context->PDODeviceExtension);
    FUNC0(Context->PDODeviceExtension->Self);
    FUNC0(Context->Irp);

    //
    // first perform a mass storage reset step 1 in 5.3.4 USB Mass Storage Bulk Only Specification
    //
    Status = FUNC9(Context->FDODeviceExtension->LowerDeviceObject, Context->FDODeviceExtension);
    if (FUNC5(Status))
    {
        //
        // step 2 reset bulk in pipe section 5.3.4
        //
        Status = FUNC10(Context->FDODeviceExtension->LowerDeviceObject, Context->FDODeviceExtension->InterfaceInformation->Pipes[Context->FDODeviceExtension->BulkInPipeIndex].PipeHandle);
        if (FUNC5(Status))
        {
            //
            // finally reset bulk out pipe
            //
            Status = FUNC10(Context->FDODeviceExtension->LowerDeviceObject, Context->FDODeviceExtension->InterfaceInformation->Pipes[Context->FDODeviceExtension->BulkOutPipeIndex].PipeHandle);
        }
    }

    //
    // get next stack location
    //
    Stack = FUNC4(Context->Irp);

    //
    // get request block
    //
    Request = (PSCSI_REQUEST_BLOCK)Stack->Parameters.Others.Argument1;
    FUNC0(Request);

    //
    // obtain request type
    //
    pCDB = (PCDB)Request->Cdb;
    FUNC0(pCDB);

    if (Status != STATUS_SUCCESS || Context->RetryCount >= 1)
    {
        //
        // Complete the master IRP
        //
        Context->Irp->IoStatus.Status = Status;
        Context->Irp->IoStatus.Information = 0;
        FUNC8(Context->PDODeviceExtension->LowerDeviceObject, Context->Irp);
        FUNC3(Context->Irp, IO_NO_INCREMENT);

        //
        // Start the next request
        //
        FUNC7(Context->PDODeviceExtension->LowerDeviceObject);

        //
        // srb handling finished
        //
        Context->FDODeviceExtension->SrbErrorHandlingActive = FALSE;

        //
        // clear timer srb
        //
        Context->FDODeviceExtension->LastTimerActiveSrb = NULL;
    }
    else
    {
        FUNC1("Retrying Count %lu %p\n", Context->RetryCount, Context->PDODeviceExtension->Self);

        //
        // re-schedule request
        //
        FUNC6(Context->PDODeviceExtension->Self, Context->Irp, Context->RetryCount + 1);

        //
        // srb error handling finished
        //
        Context->FDODeviceExtension->SrbErrorHandlingActive = FALSE;

        //
        // srb error handling finished
        //
        Context->FDODeviceExtension->TimerWorkQueueEnabled = TRUE;

        //
        // clear timer srb
        //
        Context->FDODeviceExtension->LastTimerActiveSrb = NULL;
    }

    //
    // cleanup irp context
    //
    FUNC2(Context->cbw);
    FUNC2(Context);


    FUNC1("USBSTOR_HandleTransferError returning with Status %x\n", Status);
    return Status;
}