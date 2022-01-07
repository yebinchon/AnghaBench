
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_24__ {TYPE_3__* SocketContext; int Lock; int ListenRequest; } ;
struct TYPE_23__ {int Parameters; } ;
struct TYPE_22__ {scalar_t__ state; } ;
struct TYPE_20__ {int RequestContext; } ;
struct TYPE_21__ {TYPE_5__* AssociatedEndpoint; scalar_t__ Information; int Status; TYPE_1__ Request; } ;
typedef int PTDI_REQUEST_KERNEL ;
typedef TYPE_2__* PTDI_BUCKET ;
typedef TYPE_3__* PTCP_PCB ;
typedef int PLIST_ENTRY ;
typedef int PIRP ;
typedef TYPE_4__* PIO_STACK_LOCATION ;
typedef TYPE_5__* PCONNECTION_ENDPOINT ;
typedef int NTSTATUS ;
typedef int KIRQL ;


 int ASSERT (int) ;
 scalar_t__ CLOSED ;
 TYPE_2__* CONTAINING_RECORD (int ,int ,int ) ;
 int CompleteBucket (TYPE_5__*,TYPE_2__*,int ) ;
 int DEBUG_TCP ;
 int DereferenceObject (TYPE_5__*) ;
 int ExInterlockedRemoveHeadList (int *,int *) ;
 int FALSE ;
 TYPE_4__* IoGetCurrentIrpStackLocation (int ) ;
 int LibTCPAccept (TYPE_3__*,TYPE_3__*,TYPE_5__*) ;
 int LibTCPClose (TYPE_5__*,int ,int ) ;
 int LockObject (TYPE_5__*,int *) ;
 int ReferenceObject (TYPE_5__*) ;
 int STATUS_SUCCESS ;
 int TCPCheckPeerForAccept (TYPE_3__*,int ) ;
 int TDI_BUCKET ;
 int TI_DbgPrint (int ,char*) ;
 int TRUE ;
 int UnlockObject (TYPE_5__*,int ) ;

VOID
TCPAcceptEventHandler(void *arg, PTCP_PCB newpcb)
{
    PCONNECTION_ENDPOINT Connection = (PCONNECTION_ENDPOINT)arg;
    PTDI_BUCKET Bucket;
    PLIST_ENTRY Entry;
    PIRP Irp;
    NTSTATUS Status;
    KIRQL OldIrql;

    ReferenceObject(Connection);

    while ((Entry = ExInterlockedRemoveHeadList(&Connection->ListenRequest, &Connection->Lock)))
    {
        PIO_STACK_LOCATION IrpSp;

        Bucket = CONTAINING_RECORD( Entry, TDI_BUCKET, Entry );

        Irp = Bucket->Request.RequestContext;
        IrpSp = IoGetCurrentIrpStackLocation( Irp );

        TI_DbgPrint(DEBUG_TCP,("[IP, TCPAcceptEventHandler] Getting the socket\n"));

        Status = TCPCheckPeerForAccept(newpcb,
                                       (PTDI_REQUEST_KERNEL)&IrpSp->Parameters);

        TI_DbgPrint(DEBUG_TCP,("Socket: Status: %x\n", Status));

        Bucket->Status = Status;
        Bucket->Information = 0;

        if (Status == STATUS_SUCCESS)
        {
            LockObject(Bucket->AssociatedEndpoint, &OldIrql);


            ASSERT( ((PTCP_PCB)Bucket->AssociatedEndpoint->SocketContext)->state == CLOSED );


            LibTCPClose(Bucket->AssociatedEndpoint, TRUE, FALSE);


            Bucket->AssociatedEndpoint->SocketContext = newpcb;

            LibTCPAccept(newpcb, (PTCP_PCB)Connection->SocketContext, Bucket->AssociatedEndpoint);

            UnlockObject(Bucket->AssociatedEndpoint, OldIrql);
        }

        DereferenceObject(Bucket->AssociatedEndpoint);

        CompleteBucket(Connection, Bucket, FALSE);

        if (Status == STATUS_SUCCESS)
        {
            break;
        }
    }

    DereferenceObject(Connection);
}
