
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_9__ ;
typedef struct TYPE_27__ TYPE_8__ ;
typedef struct TYPE_26__ TYPE_7__ ;
typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_12__ ;
typedef struct TYPE_18__ TYPE_11__ ;
typedef struct TYPE_17__ TYPE_10__ ;


typedef int ULONG ;
struct TYPE_28__ {scalar_t__ AsyncStatus; int AsyncEvent; int BindingHandle; int DeviceName; } ;
struct TYPE_27__ {scalar_t__ Oid; int * Data; } ;
struct TYPE_26__ {scalar_t__ Status; int * Information; } ;
struct TYPE_24__ {scalar_t__ Oid; int InformationBufferLength; int * BytesWritten; int * InformationBuffer; } ;
struct TYPE_25__ {TYPE_5__ QUERY_INFORMATION; } ;
struct TYPE_22__ {int InputBufferLength; } ;
struct TYPE_23__ {TYPE_3__ DeviceIoControl; } ;
struct TYPE_21__ {TYPE_8__* SystemBuffer; } ;
struct TYPE_20__ {TYPE_9__* FsContext; } ;
struct TYPE_19__ {TYPE_6__ DATA; int RequestType; } ;
struct TYPE_18__ {TYPE_4__ Parameters; TYPE_1__* FileObject; } ;
struct TYPE_17__ {TYPE_7__ IoStatus; TYPE_2__ AssociatedIrp; } ;
typedef TYPE_8__* PNDISUIO_QUERY_OID ;
typedef TYPE_9__* PNDISUIO_ADAPTER_CONTEXT ;
typedef TYPE_10__* PIRP ;
typedef TYPE_11__* PIO_STACK_LOCATION ;
typedef scalar_t__ NTSTATUS ;
typedef scalar_t__ NDIS_STATUS ;
typedef TYPE_12__ NDIS_REQUEST ;
typedef int NDIS_OID ;


 int DPRINT (char*,scalar_t__,int *) ;
 int Executive ;
 int FALSE ;
 int IO_NO_INCREMENT ;
 int IoCompleteRequest (TYPE_10__*,int ) ;
 int KeWaitForSingleObject (int *,int ,int ,int ,int *) ;
 int KernelMode ;
 scalar_t__ NDIS_STATUS_BUFFER_TOO_SHORT ;
 scalar_t__ NDIS_STATUS_INVALID_LENGTH ;
 scalar_t__ NDIS_STATUS_PENDING ;
 scalar_t__ NDIS_STATUS_SUCCESS ;
 int NdisRequest (scalar_t__*,int ,TYPE_12__*) ;
 int NdisRequestQueryInformation ;
 scalar_t__ STATUS_BUFFER_TOO_SMALL ;
 scalar_t__ STATUS_INVALID_PARAMETER ;

__attribute__((used)) static
NTSTATUS
QueryAdapterOid(PIRP Irp, PIO_STACK_LOCATION IrpSp)
{
    PNDISUIO_ADAPTER_CONTEXT AdapterContext = IrpSp->FileObject->FsContext;
    PNDISUIO_QUERY_OID QueryOidRequest;
    NDIS_REQUEST Request;
    ULONG RequestLength;
    NDIS_STATUS Status;

    Irp->IoStatus.Information = 0;

    QueryOidRequest = Irp->AssociatedIrp.SystemBuffer;
    RequestLength = IrpSp->Parameters.DeviceIoControl.InputBufferLength;
    if (QueryOidRequest && RequestLength >= sizeof(NDIS_OID))
    {

        Request.RequestType = NdisRequestQueryInformation;
        Request.DATA.QUERY_INFORMATION.Oid = QueryOidRequest->Oid;
        Request.DATA.QUERY_INFORMATION.InformationBufferLength = RequestLength - sizeof(NDIS_OID);
        if (Request.DATA.QUERY_INFORMATION.InformationBufferLength != 0)
        {
            Request.DATA.QUERY_INFORMATION.InformationBuffer = QueryOidRequest->Data;
        }
        else
        {
            Request.DATA.QUERY_INFORMATION.InformationBuffer = ((void*)0);
        }
        Request.DATA.QUERY_INFORMATION.BytesWritten = 0;

        DPRINT("Querying OID 0x%x on adapter %wZ\n", QueryOidRequest->Oid, &AdapterContext->DeviceName);


        NdisRequest(&Status,
                    AdapterContext->BindingHandle,
                    &Request);


        if (Status == NDIS_STATUS_PENDING)
        {
            KeWaitForSingleObject(&AdapterContext->AsyncEvent,
                                  Executive,
                                  KernelMode,
                                  FALSE,
                                  ((void*)0));
            Status = AdapterContext->AsyncStatus;
        }


        if (Status == NDIS_STATUS_INVALID_LENGTH ||
            Status == NDIS_STATUS_BUFFER_TOO_SHORT)
        {
            Status = STATUS_BUFFER_TOO_SMALL;
        }
        else if (Status == NDIS_STATUS_SUCCESS)
        {
            Irp->IoStatus.Information = sizeof(NDIS_OID) + Request.DATA.QUERY_INFORMATION.BytesWritten;
        }

        DPRINT("Final request status: 0x%x (%d)\n", Status, Irp->IoStatus.Information);
    }
    else
    {

        Status = STATUS_INVALID_PARAMETER;
    }

    Irp->IoStatus.Status = Status;

    IoCompleteRequest(Irp, IO_NO_INCREMENT);

    return Status;
}
