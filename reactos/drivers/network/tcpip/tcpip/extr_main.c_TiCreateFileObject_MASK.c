#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_37__   TYPE_9__ ;
typedef  struct TYPE_36__   TYPE_8__ ;
typedef  struct TYPE_35__   TYPE_7__ ;
typedef  struct TYPE_34__   TYPE_6__ ;
typedef  struct TYPE_33__   TYPE_5__ ;
typedef  struct TYPE_32__   TYPE_4__ ;
typedef  struct TYPE_31__   TYPE_3__ ;
typedef  struct TYPE_30__   TYPE_2__ ;
typedef  struct TYPE_29__   TYPE_1__ ;
typedef  struct TYPE_28__   TYPE_14__ ;
typedef  struct TYPE_27__   TYPE_13__ ;
typedef  struct TYPE_26__   TYPE_12__ ;
typedef  struct TYPE_25__   TYPE_11__ ;
typedef  struct TYPE_24__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ULONG ;
struct TYPE_35__ {int /*<<< orphan*/  ControlChannel; int /*<<< orphan*/  ConnectionContext; int /*<<< orphan*/  AddressHandle; } ;
struct TYPE_37__ {TYPE_7__ Handle; TYPE_12__* RequestContext; } ;
struct TYPE_36__ {int /*<<< orphan*/  Status; } ;
struct TYPE_34__ {int /*<<< orphan*/  ControlChannel; int /*<<< orphan*/  ConnectionContext; int /*<<< orphan*/  AddressHandle; } ;
struct TYPE_33__ {void* FsContext2; int /*<<< orphan*/  FileName; TYPE_10__* FsContext; } ;
struct TYPE_31__ {scalar_t__ ShareAccess; } ;
struct TYPE_32__ {TYPE_3__ Create; } ;
struct TYPE_30__ {scalar_t__ AddressLength; scalar_t__ AddressType; } ;
struct TYPE_29__ {TYPE_14__* SystemBuffer; } ;
struct TYPE_28__ {scalar_t__ EaNameLength; scalar_t__ EaName; int EaValueLength; } ;
struct TYPE_27__ {TYPE_5__* FileObject; TYPE_4__ Parameters; } ;
struct TYPE_26__ {TYPE_8__ IoStatus; TYPE_1__ AssociatedIrp; } ;
struct TYPE_25__ {int TAAddressCount; TYPE_2__* Address; } ;
struct TYPE_24__ {TYPE_6__ Handle; int /*<<< orphan*/  CancelIrps; } ;
typedef  int /*<<< orphan*/  TRANSPORT_CONTEXT ;
typedef  TYPE_9__ TDI_REQUEST ;
typedef  int /*<<< orphan*/  TA_IP_ADDRESS ;
typedef  void* PVOID ;
typedef  TYPE_10__* PTRANSPORT_CONTEXT ;
typedef  TYPE_11__* PTA_IP_ADDRESS ;
typedef  TYPE_12__* PIRP ;
typedef  TYPE_13__* PIO_STACK_LOCATION ;
typedef  TYPE_14__* PFILE_FULL_EA_INFORMATION ;
typedef  scalar_t__ PDEVICE_OBJECT ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_IRP ; 
 TYPE_10__* FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_10__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_9__*,TYPE_11__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_9__*,void*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_9__*) ; 
 scalar_t__ IPDeviceObject ; 
 int /*<<< orphan*/  IPPROTO_RAW ; 
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int /*<<< orphan*/  IPPROTO_UDP ; 
 TYPE_13__* FUNC5 (TYPE_12__*) ; 
 int /*<<< orphan*/  MIN_TRACE ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NonPagedPool ; 
 scalar_t__ RawIPDeviceObject ; 
 scalar_t__ FUNC7 (scalar_t__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  STATUS_INSUFFICIENT_RESOURCES ; 
 int /*<<< orphan*/  STATUS_INVALID_PARAMETER ; 
 scalar_t__ TCPDeviceObject ; 
 scalar_t__ TDI_ADDRESS_LENGTH_IP ; 
 scalar_t__ TDI_ADDRESS_TYPE_IP ; 
 scalar_t__ TDI_CONNECTION_CONTEXT_LENGTH ; 
 scalar_t__ TDI_CONNECTION_FILE ; 
 scalar_t__ TDI_CONTROL_CHANNEL_FILE ; 
 scalar_t__ TDI_TRANSPORT_ADDRESS_FILE ; 
 scalar_t__ TDI_TRANSPORT_ADDRESS_LENGTH ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  TRANS_CONTEXT_TAG ; 
 int /*<<< orphan*/  TdiConnectionContext ; 
 int /*<<< orphan*/  TdiTransportAddress ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ UDPDeviceObject ; 

NTSTATUS FUNC10(
    PDEVICE_OBJECT DeviceObject,
    PIRP Irp)
{
    PFILE_FULL_EA_INFORMATION EaInfo;
    PTRANSPORT_CONTEXT Context;
    PIO_STACK_LOCATION IrpSp;
    PTA_IP_ADDRESS Address;
    TDI_REQUEST Request;
    PVOID ClientContext;
    NTSTATUS Status;
    ULONG Protocol;
    BOOLEAN Shared;

    FUNC8(DEBUG_IRP, ("Called. DeviceObject is at (0x%X), IRP is at (0x%X).\n", DeviceObject, Irp));

    EaInfo = Irp->AssociatedIrp.SystemBuffer;

    /* Parameter check */
    /* No EA information means that we're opening for SET/QUERY_INFORMATION
    * style calls. */

    /* Allocate resources here. We release them again if something failed */
    Context = FUNC0(NonPagedPool, sizeof(TRANSPORT_CONTEXT),
                                    TRANS_CONTEXT_TAG);
    if (!Context)
    {
        FUNC8(MIN_TRACE, ("Insufficient resources.\n"));
        return STATUS_INSUFFICIENT_RESOURCES;
    }

    Context->CancelIrps = FALSE;

    IrpSp = FUNC5(Irp);
    IrpSp->FileObject->FsContext = Context;
    Request.RequestContext       = Irp;

    /* Branch to the right handler */
    if (EaInfo &&
        (EaInfo->EaNameLength == TDI_TRANSPORT_ADDRESS_LENGTH) &&
        (FUNC7(&EaInfo->EaName, TdiTransportAddress,
        TDI_TRANSPORT_ADDRESS_LENGTH) == TDI_TRANSPORT_ADDRESS_LENGTH))
    {
        /* This is a request to open an address */


        /* XXX This should probably be done in IoCreateFile() */
        /* Parameter checks */

        Address = (PTA_IP_ADDRESS)(EaInfo->EaName + EaInfo->EaNameLength + 1); //0-term

        if ((EaInfo->EaValueLength < sizeof(TA_IP_ADDRESS)) ||
            (Address->TAAddressCount != 1) ||
            (Address->Address[0].AddressLength < TDI_ADDRESS_LENGTH_IP) ||
            (Address->Address[0].AddressType != TDI_ADDRESS_TYPE_IP))
        {
            FUNC8(MIN_TRACE, ("Parameters are invalid:\n"));
            FUNC8(MIN_TRACE, ("AddressCount: %d\n", Address->TAAddressCount));
            if( Address->TAAddressCount == 1 )
            {
                FUNC8(MIN_TRACE, ("AddressLength: %u\n",
                            Address->Address[0].AddressLength));
                FUNC8(MIN_TRACE, ("AddressType: %u\n",
                            Address->Address[0].AddressType));
            }

            FUNC1(Context, TRANS_CONTEXT_TAG);
            return STATUS_INVALID_PARAMETER;
        }

        /* Open address file object */

        /* Protocol depends on device object so find the protocol */
        if (DeviceObject == TCPDeviceObject)
            Protocol = IPPROTO_TCP;
        else if (DeviceObject == UDPDeviceObject)
            Protocol = IPPROTO_UDP;
        else if (DeviceObject == IPDeviceObject)
            Protocol = IPPROTO_RAW;
        else if (DeviceObject == RawIPDeviceObject)
        {
            Status = FUNC9(&IrpSp->FileObject->FileName, &Protocol);
            if (!FUNC6(Status))
            {
                FUNC8(MIN_TRACE, ("Raw IP protocol number is invalid.\n"));
                FUNC1(Context, TRANS_CONTEXT_TAG);
                return STATUS_INVALID_PARAMETER;
            }
        }
        else
        {
            FUNC8(MIN_TRACE, ("Invalid device object at (0x%X).\n", DeviceObject));
            FUNC1(Context, TRANS_CONTEXT_TAG);
            return STATUS_INVALID_PARAMETER;
        }

        Shared = (IrpSp->Parameters.Create.ShareAccess != 0);

        Status = FUNC2(&Request, Address, Protocol, Shared, NULL);
        if (FUNC6(Status))
        {
            IrpSp->FileObject->FsContext2 = (PVOID)TDI_TRANSPORT_ADDRESS_FILE;
            Context->Handle.AddressHandle = Request.Handle.AddressHandle;
        }

    }
    else if (EaInfo &&
            (EaInfo->EaNameLength == TDI_CONNECTION_CONTEXT_LENGTH) &&
            (FUNC7
            (&EaInfo->EaName, TdiConnectionContext,
            TDI_CONNECTION_CONTEXT_LENGTH) ==
            TDI_CONNECTION_CONTEXT_LENGTH))
    {
        /* This is a request to open a connection endpoint */

        /* Parameter checks */

        if (EaInfo->EaValueLength < sizeof(PVOID))
        {
            FUNC8(MIN_TRACE, ("Parameters are invalid.\n"));
            FUNC1(Context, TRANS_CONTEXT_TAG);
            return STATUS_INVALID_PARAMETER;
        }

        /* Can only do connection oriented communication using TCP */

        if (DeviceObject != TCPDeviceObject)
        {
            FUNC8(MIN_TRACE, ("Bad device object.\n"));
            FUNC1(Context, TRANS_CONTEXT_TAG);
            return STATUS_INVALID_PARAMETER;
        }

        ClientContext = *((PVOID*)(EaInfo->EaName + EaInfo->EaNameLength));

        /* Open connection endpoint file object */

        Status = FUNC3(&Request, ClientContext);
        if (FUNC6(Status))
        {
            IrpSp->FileObject->FsContext2 = (PVOID)TDI_CONNECTION_FILE;
            Context->Handle.ConnectionContext = Request.Handle.ConnectionContext;
        }
    }
    else
    {
        /* This is a request to open a control connection */
        Status = FUNC4(&Request);
        if (FUNC6(Status))
        {
            IrpSp->FileObject->FsContext2 = (PVOID)TDI_CONTROL_CHANNEL_FILE;
            Context->Handle.ControlChannel = Request.Handle.ControlChannel;
        }
    }

    if (!FUNC6(Status))
        FUNC1(Context, TRANS_CONTEXT_TAG);

    FUNC8(DEBUG_IRP, ("Leaving. Status = (0x%X).\n", Status));

    Irp->IoStatus.Status = Status;
    return Status;
}