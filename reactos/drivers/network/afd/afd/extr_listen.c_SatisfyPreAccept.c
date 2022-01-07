
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_9__ ;
typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_24__ {int Address; int SequenceNumber; } ;
struct TYPE_23__ {TYPE_2__* ConnInfo; int Seq; } ;
struct TYPE_20__ {int Status; scalar_t__ Information; } ;
struct TYPE_16__ {int SystemBuffer; } ;
struct TYPE_22__ {TYPE_5__ IoStatus; scalar_t__ MdlAddress; TYPE_1__ AssociatedIrp; } ;
struct TYPE_21__ {TYPE_4__* Address; int TAAddressCount; } ;
struct TYPE_19__ {TYPE_3__* Address; int AddressLength; int AddressType; } ;
struct TYPE_18__ {int in_addr; int sin_port; } ;
struct TYPE_17__ {int RemoteAddress; } ;
typedef TYPE_6__* PTA_IP_ADDRESS ;
typedef TYPE_7__* PIRP ;
typedef scalar_t__ PCHAR ;
typedef TYPE_8__* PAFD_TDI_OBJECT_QELT ;
typedef TYPE_9__* PAFD_RECEIVED_ACCEPT_DATA ;
typedef int NTSTATUS ;


 int AFD_DbgPrint (int ,char*) ;
 int IO_NETWORK_INCREMENT ;
 int IoCompleteRequest (TYPE_7__*,int ) ;
 int IoGetCurrentIrpStackLocation (TYPE_7__*) ;
 int IoSetCancelRoutine (TYPE_7__*,int *) ;
 int MID_TRACE ;
 int STATUS_SUCCESS ;
 int TaCopyTransportAddressInPlace (int *,int ) ;
 int UnlockRequest (TYPE_7__*,int ) ;

__attribute__((used)) static NTSTATUS SatisfyPreAccept( PIRP Irp, PAFD_TDI_OBJECT_QELT Qelt ) {
    PAFD_RECEIVED_ACCEPT_DATA ListenReceive =
        (PAFD_RECEIVED_ACCEPT_DATA)Irp->AssociatedIrp.SystemBuffer;
    PTA_IP_ADDRESS IPAddr;

    ListenReceive->SequenceNumber = Qelt->Seq;

    AFD_DbgPrint(MID_TRACE,("Giving SEQ %u to userland\n", Qelt->Seq));
    AFD_DbgPrint(MID_TRACE,("Socket Address (K) %p (U) %p\n",
                            &ListenReceive->Address,
                            Qelt->ConnInfo->RemoteAddress));

    TaCopyTransportAddressInPlace( &ListenReceive->Address,
                                   Qelt->ConnInfo->RemoteAddress );

    IPAddr = (PTA_IP_ADDRESS)&ListenReceive->Address;

    AFD_DbgPrint(MID_TRACE,("IPAddr->TAAddressCount %d\n",
                            IPAddr->TAAddressCount));
    AFD_DbgPrint(MID_TRACE,("IPAddr->Address[0].AddressType %u\n",
                            IPAddr->Address[0].AddressType));
    AFD_DbgPrint(MID_TRACE,("IPAddr->Address[0].AddressLength %u\n",
                            IPAddr->Address[0].AddressLength));
    AFD_DbgPrint(MID_TRACE,("IPAddr->Address[0].Address[0].sin_port %x\n",
                            IPAddr->Address[0].Address[0].sin_port));
    AFD_DbgPrint(MID_TRACE,("IPAddr->Address[0].Address[0].sin_addr %x\n",
                            IPAddr->Address[0].Address[0].in_addr));

    if( Irp->MdlAddress ) UnlockRequest( Irp, IoGetCurrentIrpStackLocation( Irp ) );

    Irp->IoStatus.Information = ((PCHAR)&IPAddr[1]) - ((PCHAR)ListenReceive);
    Irp->IoStatus.Status = STATUS_SUCCESS;
    (void)IoSetCancelRoutine(Irp, ((void*)0));
    IoCompleteRequest( Irp, IO_NETWORK_INCREMENT );
    return STATUS_SUCCESS;
}
