
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_10__ {int Lock; int ListenRequest; } ;
struct TYPE_9__ {TYPE_2__* AssociatedEndpoint; scalar_t__ Information; int Status; } ;
typedef TYPE_1__* PTDI_BUCKET ;
typedef int PLIST_ENTRY ;
typedef TYPE_2__* PCONNECTION_ENDPOINT ;
typedef int NTSTATUS ;


 TYPE_1__* CONTAINING_RECORD (int ,int ,int ) ;
 int CompleteBucket (TYPE_2__*,TYPE_1__*,int ) ;
 int DereferenceObject (TYPE_2__*) ;
 int ExInterlockedRemoveHeadList (int *,int *) ;
 int FALSE ;
 int ReferenceObject (TYPE_2__*) ;
 int TDI_BUCKET ;

VOID
FlushListenQueue(PCONNECTION_ENDPOINT Connection, const NTSTATUS Status)
{
    PTDI_BUCKET Bucket;
    PLIST_ENTRY Entry;

    ReferenceObject(Connection);

    while ((Entry = ExInterlockedRemoveHeadList(&Connection->ListenRequest, &Connection->Lock)))
    {
        Bucket = CONTAINING_RECORD( Entry, TDI_BUCKET, Entry );

        Bucket->Status = Status;
        Bucket->Information = 0;

        DereferenceObject(Bucket->AssociatedEndpoint);
        CompleteBucket(Connection, Bucket, FALSE);
    }

    DereferenceObject(Connection);
}
