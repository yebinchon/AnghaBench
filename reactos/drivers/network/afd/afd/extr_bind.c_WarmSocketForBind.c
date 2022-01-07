
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_9__ ;
typedef struct TYPE_15__ TYPE_8__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_16__ {TYPE_1__* Address; } ;
struct TYPE_15__ {int Buffer; int Length; } ;
struct TYPE_13__ {scalar_t__ Size; scalar_t__ Content; int Window; } ;
struct TYPE_12__ {int Object; int Handle; } ;
struct TYPE_11__ {int InFlightRequest; } ;
struct TYPE_14__ {int Flags; int AddressFrom; TYPE_4__ Recv; TYPE_3__ AddressFile; TYPE_2__ ReceiveIrp; TYPE_9__* LocalAddress; TYPE_8__ TdiDeviceName; } ;
struct TYPE_10__ {int AddressType; } ;
typedef TYPE_5__* PAFD_FCB ;
typedef scalar_t__ NTSTATUS ;


 int AFD_DbgPrint (int ,char*) ;
 int AFD_ENDPOINT_CONNECTIONLESS ;
 int ExAllocatePoolWithTag (int ,scalar_t__,int ) ;
 int MID_TRACE ;
 int MIN_TRACE ;
 scalar_t__ NT_SUCCESS (scalar_t__) ;
 int PacketSocketRecvComplete ;
 int PagedPool ;
 scalar_t__ STATUS_INVALID_PARAMETER ;
 scalar_t__ STATUS_NO_MEMORY ;
 scalar_t__ STATUS_NO_SUCH_DEVICE ;
 scalar_t__ STATUS_PENDING ;
 scalar_t__ STATUS_SUCCESS ;
 int TAG_AFD_DATA_BUFFER ;
 scalar_t__ TdiOpenAddressFile (TYPE_8__*,TYPE_9__*,int ,int *,int *) ;
 scalar_t__ TdiQueryMaxDatagramLength (int ,scalar_t__*) ;
 scalar_t__ TdiReceiveDatagram (int *,int ,int ,int ,scalar_t__,int ,int ,TYPE_5__*) ;

NTSTATUS WarmSocketForBind( PAFD_FCB FCB, ULONG ShareType ) {
    NTSTATUS Status;

    AFD_DbgPrint(MID_TRACE,("Called (AF %u)\n",
                            FCB->LocalAddress->Address[0].AddressType));

    if( !FCB->TdiDeviceName.Length || !FCB->TdiDeviceName.Buffer ) {
        AFD_DbgPrint(MIN_TRACE,("Null Device\n"));
        return STATUS_NO_SUCH_DEVICE;
    }
    if( !FCB->LocalAddress ) {
        AFD_DbgPrint(MIN_TRACE,("No local address\n"));
        return STATUS_INVALID_PARAMETER;
    }

    Status = TdiOpenAddressFile(&FCB->TdiDeviceName,
                                FCB->LocalAddress,
                                ShareType,
                                &FCB->AddressFile.Handle,
                                &FCB->AddressFile.Object );
    if (!NT_SUCCESS(Status))
        return Status;

    if (FCB->Flags & AFD_ENDPOINT_CONNECTIONLESS)
    {
        if (!FCB->Recv.Size)
        {
            Status = TdiQueryMaxDatagramLength(FCB->AddressFile.Object,
                                               &FCB->Recv.Size);
        }

        if (NT_SUCCESS(Status) && !FCB->Recv.Window)
        {
            FCB->Recv.Window = ExAllocatePoolWithTag(PagedPool,
                                                     FCB->Recv.Size,
                                                     TAG_AFD_DATA_BUFFER);

            if (!FCB->Recv.Window)
                Status = STATUS_NO_MEMORY;
        }

        if (NT_SUCCESS(Status) && FCB->Recv.Content < FCB->Recv.Size)
        {
            Status = TdiReceiveDatagram(&FCB->ReceiveIrp.InFlightRequest,
                                        FCB->AddressFile.Object,
                                        0,
                                        FCB->Recv.Window,
                                        FCB->Recv.Size,
                                        FCB->AddressFrom,
                                        PacketSocketRecvComplete,
                                        FCB);


            if( Status == STATUS_PENDING ) Status = STATUS_SUCCESS;
        }
    }

    AFD_DbgPrint(MID_TRACE,("Returning %x\n", Status));

    return Status;
}
