
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int u16_t ;
typedef int VOID ;
typedef int ULONG ;
typedef int UINT ;
struct TYPE_15__ {int DisconnectTimer; int SendRequest; int Lock; int SocketContext; } ;
struct TYPE_14__ {int MdlAddress; } ;
struct TYPE_12__ {TYPE_3__* RequestContext; } ;
struct TYPE_13__ {scalar_t__ Status; int Information; TYPE_1__ Request; int Entry; } ;
typedef int PVOID ;
typedef TYPE_2__* PTDI_BUCKET ;
typedef int PMDL ;
typedef int PLIST_ENTRY ;
typedef TYPE_3__* PIRP ;
typedef TYPE_4__* PCONNECTION_ENDPOINT ;
typedef scalar_t__ NTSTATUS ;


 TYPE_2__* CONTAINING_RECORD (int ,int ,int ) ;
 int CompleteBucket (TYPE_4__*,TYPE_2__*,int ) ;
 int DEBUG_TCP ;
 int DereferenceObject (TYPE_4__*) ;
 int ExInterlockedInsertHeadList (int *,int *,int *) ;
 int ExInterlockedRemoveHeadList (int *,int *) ;
 int FALSE ;
 int FlushShutdownQueue (TYPE_4__*,scalar_t__,int ) ;
 scalar_t__ IsListEmpty (int *) ;
 scalar_t__ KeCancelTimer (int *) ;
 int LibTCPSend (TYPE_4__*,int ,int ,int *,int ) ;
 int NdisQueryBuffer (int ,int *,int *) ;
 int ReferenceObject (TYPE_4__*) ;
 scalar_t__ STATUS_PENDING ;
 scalar_t__ STATUS_SUCCESS ;
 scalar_t__ TCPTranslateError (int ) ;
 int TDI_BUCKET ;
 int TI_DbgPrint (int ,char*) ;
 int TRUE ;

VOID
TCPSendEventHandler(void *arg, const u16_t space)
{
    PCONNECTION_ENDPOINT Connection = (PCONNECTION_ENDPOINT)arg;
    PTDI_BUCKET Bucket;
    PLIST_ENTRY Entry;
    PIRP Irp;
    NTSTATUS Status;
    PMDL Mdl;
    ULONG BytesSent;

    ReferenceObject(Connection);

    while ((Entry = ExInterlockedRemoveHeadList(&Connection->SendRequest, &Connection->Lock)))
    {
        UINT SendLen = 0;
        PVOID SendBuffer = 0;

        Bucket = CONTAINING_RECORD( Entry, TDI_BUCKET, Entry );

        Irp = Bucket->Request.RequestContext;
        Mdl = Irp->MdlAddress;

        TI_DbgPrint(DEBUG_TCP,
                    ("Getting the user buffer from %x\n", Mdl));

        NdisQueryBuffer( Mdl, &SendBuffer, &SendLen );

        TI_DbgPrint(DEBUG_TCP,
                    ("Writing %d bytes to %x\n", SendLen, SendBuffer));

        TI_DbgPrint(DEBUG_TCP, ("Connection: %x\n", Connection));
        TI_DbgPrint
        (DEBUG_TCP,
         ("Connection->SocketContext: %x\n",
          Connection->SocketContext));

        Status = TCPTranslateError(LibTCPSend(Connection,
                                              SendBuffer,
                                              SendLen, &BytesSent, TRUE));

        TI_DbgPrint(DEBUG_TCP,("TCP Bytes: %d\n", BytesSent));

        if( Status == STATUS_PENDING )
        {
            ExInterlockedInsertHeadList(&Connection->SendRequest,
                                        &Bucket->Entry,
                                        &Connection->Lock);
            break;
        }
        else
        {
            TI_DbgPrint(DEBUG_TCP,
                        ("Completing Send request: %x %x\n",
                         Bucket->Request, Status));

            Bucket->Status = Status;
            Bucket->Information = (Bucket->Status == STATUS_SUCCESS) ? BytesSent : 0;

            CompleteBucket(Connection, Bucket, FALSE);
        }
    }



    if (IsListEmpty(&Connection->SendRequest))
    {
        FlushShutdownQueue(Connection, STATUS_SUCCESS, FALSE);

        if (KeCancelTimer(&Connection->DisconnectTimer))
        {
            DereferenceObject(Connection);
        }
    }

    DereferenceObject(Connection);
}
