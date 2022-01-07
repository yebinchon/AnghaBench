
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int VOID ;
typedef int UINT ;
struct TYPE_14__ {int Lock; int ReceiveRequest; } ;
struct TYPE_13__ {int MdlAddress; } ;
struct TYPE_11__ {TYPE_3__* RequestContext; } ;
struct TYPE_12__ {int Information; scalar_t__ Status; int Entry; TYPE_1__ Request; } ;
typedef int PUCHAR ;
typedef TYPE_2__* PTDI_BUCKET ;
typedef int PMDL ;
typedef int PLIST_ENTRY ;
typedef TYPE_3__* PIRP ;
typedef TYPE_4__* PCONNECTION_ENDPOINT ;
typedef scalar_t__ NTSTATUS ;


 TYPE_2__* CONTAINING_RECORD (int ,int ,int ) ;
 int CompleteBucket (TYPE_4__*,TYPE_2__*,int ) ;
 int DereferenceObject (TYPE_4__*) ;
 int ExInterlockedInsertHeadList (int *,int *,int *) ;
 int ExInterlockedRemoveHeadList (int *,int *) ;
 int FALSE ;
 scalar_t__ LibTCPGetDataFromConnectionQueue (TYPE_4__*,int ,int ,int *) ;
 int NdisQueryBuffer (int ,int *,int *) ;
 int ReferenceObject (TYPE_4__*) ;
 scalar_t__ STATUS_PENDING ;
 int TDI_BUCKET ;

VOID
TCPRecvEventHandler(void *arg)
{
    PCONNECTION_ENDPOINT Connection = (PCONNECTION_ENDPOINT)arg;
    PTDI_BUCKET Bucket;
    PLIST_ENTRY Entry;
    PIRP Irp;
    PMDL Mdl;
    UINT Received;
    UINT RecvLen;
    PUCHAR RecvBuffer;
    NTSTATUS Status;

    ReferenceObject(Connection);

    while ((Entry = ExInterlockedRemoveHeadList(&Connection->ReceiveRequest, &Connection->Lock)))
    {
        Bucket = CONTAINING_RECORD( Entry, TDI_BUCKET, Entry );

        Irp = Bucket->Request.RequestContext;
        Mdl = Irp->MdlAddress;

        NdisQueryBuffer( Mdl, &RecvBuffer, &RecvLen );

        Status = LibTCPGetDataFromConnectionQueue(Connection, RecvBuffer, RecvLen, &Received);
        if (Status == STATUS_PENDING)
        {
            ExInterlockedInsertHeadList(&Connection->ReceiveRequest,
                                        &Bucket->Entry,
                                        &Connection->Lock);
            break;
        }

        Bucket->Status = Status;
        Bucket->Information = Received;

        CompleteBucket(Connection, Bucket, FALSE);
    }

    DereferenceObject(Connection);
}
