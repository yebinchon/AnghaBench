#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_8__ ;
typedef  struct TYPE_22__   TYPE_7__ ;
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ULONG_PTR ;
struct TYPE_23__ {TYPE_1__* FileObject; } ;
struct TYPE_19__ {int /*<<< orphan*/  Status; } ;
struct TYPE_22__ {TYPE_4__ IoStatus; } ;
struct TYPE_18__ {int /*<<< orphan*/  ControlChannel; int /*<<< orphan*/  ConnectionContext; int /*<<< orphan*/  AddressHandle; } ;
struct TYPE_21__ {TYPE_3__ Handle; } ;
struct TYPE_17__ {int /*<<< orphan*/  ControlChannel; int /*<<< orphan*/  ConnectionContext; int /*<<< orphan*/  AddressHandle; } ;
struct TYPE_20__ {TYPE_2__ Handle; } ;
struct TYPE_16__ {int /*<<< orphan*/  FsContext2; TYPE_6__* FsContext; } ;
typedef  TYPE_5__ TDI_REQUEST ;
typedef  TYPE_6__* PTRANSPORT_CONTEXT ;
typedef  TYPE_7__* PIRP ;
typedef  TYPE_8__* PIO_STACK_LOCATION ;
typedef  int /*<<< orphan*/  PDEVICE_OBJECT ;
typedef  int /*<<< orphan*/  NTSTATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*) ; 
 TYPE_8__* FUNC4 (TYPE_7__*) ; 
 int /*<<< orphan*/  MIN_TRACE ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STATUS_INVALID_PARAMETER ; 
#define  TDI_CONNECTION_FILE 130 
#define  TDI_CONTROL_CHANNEL_FILE 129 
#define  TDI_TRANSPORT_ADDRESS_FILE 128 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  TRANS_CONTEXT_TAG ; 

NTSTATUS FUNC7(
    PDEVICE_OBJECT DeviceObject,
    PIRP Irp)
{
    PIO_STACK_LOCATION IrpSp;
    PTRANSPORT_CONTEXT Context;
    TDI_REQUEST Request;
    NTSTATUS Status;

    IrpSp   = FUNC4(Irp);
    Context = IrpSp->FileObject->FsContext;
    if (!Context)
    {
        FUNC6(MIN_TRACE, ("Parameters are invalid.\n"));
        return STATUS_INVALID_PARAMETER;
    }

    switch ((ULONG_PTR)IrpSp->FileObject->FsContext2)
    {
        case TDI_TRANSPORT_ADDRESS_FILE:
            Request.Handle.AddressHandle = Context->Handle.AddressHandle;
            Status = FUNC1(&Request);
            break;

        case TDI_CONNECTION_FILE:
            Request.Handle.ConnectionContext = Context->Handle.ConnectionContext;
            Status = FUNC2(&Request);
            break;

        case TDI_CONTROL_CHANNEL_FILE:
            Request.Handle.ControlChannel = Context->Handle.ControlChannel;
            Status = FUNC3(&Request);
            break;

        default:
            Status = STATUS_INVALID_PARAMETER;
            break;
    }

    if (FUNC5(Status))
        FUNC0(Context, TRANS_CONTEXT_TAG);

    Irp->IoStatus.Status = Status;

    return Irp->IoStatus.Status;
}