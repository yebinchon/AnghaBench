
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_8__ ;
typedef struct TYPE_29__ TYPE_7__ ;
typedef struct TYPE_28__ TYPE_6__ ;
typedef struct TYPE_27__ TYPE_5__ ;
typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;
typedef struct TYPE_22__ TYPE_12__ ;


typedef scalar_t__ UINT ;
struct TYPE_27__ {scalar_t__ BytesUsed; scalar_t__ Content; } ;
struct TYPE_30__ {scalar_t__ LastReceiveStatus; scalar_t__* PollStatus; int FileObject; int DeviceExt; int PollState; int * PendingIrpList; TYPE_5__ Recv; scalar_t__ Overread; } ;
struct TYPE_29__ {int BufferCount; int BufferArray; } ;
struct TYPE_26__ {scalar_t__ Information; scalar_t__ Status; } ;
struct TYPE_24__ {int ListEntry; } ;
struct TYPE_25__ {TYPE_2__ Overlay; } ;
struct TYPE_28__ {scalar_t__ MdlAddress; TYPE_4__ IoStatus; TYPE_3__ Tail; } ;
struct TYPE_23__ {int ListEntry; } ;
struct TYPE_22__ {TYPE_1__ Overlay; } ;
typedef int PLIST_ENTRY ;
typedef TYPE_6__* PIRP ;
typedef int PIO_STACK_LOCATION ;
typedef TYPE_7__* PAFD_RECV_INFO ;
typedef TYPE_8__* PAFD_FCB ;
typedef scalar_t__ NTSTATUS ;


 int AFD_DbgPrint (int ,char*) ;
 int AFD_EVENT_CLOSE ;
 int AFD_EVENT_DISCONNECT ;
 int AFD_EVENT_RECEIVE ;
 TYPE_6__* CONTAINING_RECORD (int ,int ,int ) ;
 scalar_t__ CantReadMore (TYPE_8__*) ;
 int FALSE ;
 size_t FD_CLOSE_BIT ;
 size_t FD_READ_BIT ;
 size_t FUNCTION_RECV ;
 TYPE_7__* GetLockedData (TYPE_6__*,int ) ;
 int IO_NETWORK_INCREMENT ;
 int IRP ;
 int InsertHeadList (int *,int *) ;
 int IoCompleteRequest (TYPE_6__*,int ) ;
 int IoGetCurrentIrpStackLocation (TYPE_6__*) ;
 int IoSetCancelRoutine (TYPE_6__*,int *) ;
 scalar_t__ IsListEmpty (int *) ;
 int MID_TRACE ;
 int PollReeval (int ,int ) ;
 int RemoveHeadList (int *) ;
 scalar_t__ STATUS_FILE_CLOSED ;
 scalar_t__ STATUS_PENDING ;
 scalar_t__ STATUS_SUCCESS ;
 scalar_t__ TRUE ;
 TYPE_12__ Tail ;
 scalar_t__ TryToSatisfyRecvRequestFromBuffer (TYPE_8__*,TYPE_7__*,scalar_t__*) ;
 int UnlockBuffers (int ,int ,int ) ;
 int UnlockRequest (TYPE_6__*,int ) ;

__attribute__((used)) static NTSTATUS ReceiveActivity( PAFD_FCB FCB, PIRP Irp ) {
    PLIST_ENTRY NextIrpEntry;
    PIRP NextIrp;
    PIO_STACK_LOCATION NextIrpSp;
    PAFD_RECV_INFO RecvReq;
    UINT TotalBytesCopied = 0;
    NTSTATUS Status = STATUS_SUCCESS, RetStatus = STATUS_PENDING;

    AFD_DbgPrint(MID_TRACE,("%p %p\n", FCB, Irp));

    AFD_DbgPrint(MID_TRACE,("FCB %p Receive data waiting %u\n",
                            FCB, FCB->Recv.Content));

    if( CantReadMore( FCB ) ) {



        while( !IsListEmpty( &FCB->PendingIrpList[FUNCTION_RECV] ) ) {
            NextIrpEntry = RemoveHeadList(&FCB->PendingIrpList[FUNCTION_RECV]);
            NextIrp = CONTAINING_RECORD(NextIrpEntry, IRP, Tail.Overlay.ListEntry);
            NextIrpSp = IoGetCurrentIrpStackLocation( NextIrp );
            RecvReq = GetLockedData(NextIrp, NextIrpSp);

            AFD_DbgPrint(MID_TRACE,("Completing recv %p (%u)\n", NextIrp,
                                    TotalBytesCopied));
            UnlockBuffers( RecvReq->BufferArray,
                           RecvReq->BufferCount, FALSE );
            if (FCB->Overread && FCB->LastReceiveStatus == STATUS_SUCCESS)
            {

                Status = STATUS_FILE_CLOSED;
            }
            else
            {

                Status = FCB->LastReceiveStatus;
            }
            NextIrp->IoStatus.Status = Status;
            NextIrp->IoStatus.Information = 0;
            if( NextIrp == Irp ) RetStatus = Status;
            if( NextIrp->MdlAddress ) UnlockRequest( NextIrp, IoGetCurrentIrpStackLocation( NextIrp ) );
            (void)IoSetCancelRoutine(NextIrp, ((void*)0));
            IoCompleteRequest( NextIrp, IO_NETWORK_INCREMENT );
            FCB->Overread = TRUE;
        }
    } else {



        AFD_DbgPrint(MID_TRACE,("FCB %p Receive data waiting %u\n",
                                FCB, FCB->Recv.Content));



        while( !IsListEmpty( &FCB->PendingIrpList[FUNCTION_RECV] ) ) {
            NextIrpEntry = RemoveHeadList(&FCB->PendingIrpList[FUNCTION_RECV]);
            NextIrp = CONTAINING_RECORD(NextIrpEntry, IRP, Tail.Overlay.ListEntry);
            NextIrpSp = IoGetCurrentIrpStackLocation( NextIrp );
            RecvReq = GetLockedData(NextIrp, NextIrpSp);

            AFD_DbgPrint(MID_TRACE,("RecvReq @ %p\n", RecvReq));

            Status = TryToSatisfyRecvRequestFromBuffer
            ( FCB, RecvReq, &TotalBytesCopied );

            if( Status == STATUS_PENDING ) {
                AFD_DbgPrint(MID_TRACE,("Ran out of data for %p\n", NextIrp));
                InsertHeadList(&FCB->PendingIrpList[FUNCTION_RECV],
                               &NextIrp->Tail.Overlay.ListEntry);
                break;
            } else {
                AFD_DbgPrint(MID_TRACE,("Completing recv %p (%u)\n", NextIrp,
                                        TotalBytesCopied));
                UnlockBuffers( RecvReq->BufferArray,
                               RecvReq->BufferCount, FALSE );
                NextIrp->IoStatus.Status = Status;
                NextIrp->IoStatus.Information = TotalBytesCopied;
                if( NextIrp == Irp ) {
                    RetStatus = Status;
                }
                if( NextIrp->MdlAddress ) UnlockRequest( NextIrp, IoGetCurrentIrpStackLocation( NextIrp ) );
                (void)IoSetCancelRoutine(NextIrp, ((void*)0));
                IoCompleteRequest( NextIrp, IO_NETWORK_INCREMENT );
            }
        }
    }

    if( FCB->Recv.Content - FCB->Recv.BytesUsed &&
        IsListEmpty(&FCB->PendingIrpList[FUNCTION_RECV]) ) {
        FCB->PollState |= AFD_EVENT_RECEIVE;
        FCB->PollStatus[FD_READ_BIT] = STATUS_SUCCESS;
        PollReeval( FCB->DeviceExt, FCB->FileObject );
    }
    else
    {
        FCB->PollState &= ~AFD_EVENT_RECEIVE;
    }


    if (CantReadMore(FCB))
    {
        if (FCB->LastReceiveStatus == STATUS_SUCCESS)
        {
            FCB->PollState |= AFD_EVENT_DISCONNECT;
        }
        else
        {
            FCB->PollState |= AFD_EVENT_CLOSE;
        }
        FCB->PollStatus[FD_CLOSE_BIT] = FCB->LastReceiveStatus;
        PollReeval(FCB->DeviceExt, FCB->FileObject);
    }

    AFD_DbgPrint(MID_TRACE,("RetStatus for irp %p is %x\n", Irp, RetStatus));

    return RetStatus;
}
