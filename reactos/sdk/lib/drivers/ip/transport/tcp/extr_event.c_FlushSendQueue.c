
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_10__ {int SendRequest; int Lock; } ;
struct TYPE_9__ {int Status; scalar_t__ Information; int Request; } ;
typedef TYPE_1__* PTDI_BUCKET ;
typedef int PLIST_ENTRY ;
typedef TYPE_2__* PCONNECTION_ENDPOINT ;
typedef int NTSTATUS ;
typedef scalar_t__ BOOLEAN ;


 TYPE_1__* CONTAINING_RECORD (int ,int ,int ) ;
 int CompleteBucket (TYPE_2__*,TYPE_1__*,int ) ;
 int DEBUG_TCP ;
 int DereferenceObject (TYPE_2__*) ;
 int ExInterlockedRemoveHeadList (int *,int *) ;
 int FALSE ;
 int IsListEmpty (int *) ;
 int ReferenceObject (TYPE_2__*) ;
 int RemoveHeadList (int *) ;
 int TDI_BUCKET ;
 int TI_DbgPrint (int ,char*) ;

VOID
FlushSendQueue(PCONNECTION_ENDPOINT Connection, const NTSTATUS Status, const BOOLEAN interlocked)
{
    PTDI_BUCKET Bucket;
    PLIST_ENTRY Entry;

    ReferenceObject(Connection);

    if (interlocked)
    {
        while ((Entry = ExInterlockedRemoveHeadList(&Connection->SendRequest, &Connection->Lock)))
        {
            Bucket = CONTAINING_RECORD( Entry, TDI_BUCKET, Entry );

            TI_DbgPrint(DEBUG_TCP,
                        ("Completing Send request: %x %x\n",
                         Bucket->Request, Status));

            Bucket->Status = Status;
            Bucket->Information = 0;

            CompleteBucket(Connection, Bucket, FALSE);
        }
    }
    else
    {
        while (!IsListEmpty(&Connection->SendRequest))
        {
            Entry = RemoveHeadList(&Connection->SendRequest);

            Bucket = CONTAINING_RECORD(Entry, TDI_BUCKET, Entry);

            Bucket->Information = 0;
            Bucket->Status = Status;

            CompleteBucket(Connection, Bucket, FALSE);
        }
    }

    DereferenceObject(Connection);
}
