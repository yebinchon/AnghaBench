
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int ListenRequest; } ;
struct TYPE_10__ {int RequestContext; int RequestNotifyObject; } ;
struct TYPE_11__ {int Entry; TYPE_1__ Request; TYPE_3__* AssociatedEndpoint; } ;
typedef int PVOID ;
typedef int PTDI_REQUEST ;
typedef TYPE_2__* PTDI_BUCKET ;
typedef int PTCP_COMPLETION_ROUTINE ;
typedef TYPE_3__* PCONNECTION_ENDPOINT ;
typedef int NTSTATUS ;
typedef int KIRQL ;


 TYPE_2__* ExAllocateFromNPagedLookasideList (int *) ;
 int InsertTailList (int *,int *) ;
 int LockObject (TYPE_3__*,int *) ;
 int ReferenceObject (TYPE_3__*) ;
 int STATUS_NO_MEMORY ;
 int STATUS_PENDING ;
 int TdiBucketLookasideList ;
 int UnlockObject (TYPE_3__*,int ) ;

NTSTATUS TCPAccept ( PTDI_REQUEST Request,
                     PCONNECTION_ENDPOINT Listener,
                     PCONNECTION_ENDPOINT Connection,
                     PTCP_COMPLETION_ROUTINE Complete,
                     PVOID Context )
{
    NTSTATUS Status;
    PTDI_BUCKET Bucket;
    KIRQL OldIrql;

    LockObject(Listener, &OldIrql);

    Bucket = ExAllocateFromNPagedLookasideList(&TdiBucketLookasideList);

    if (Bucket)
    {
        Bucket->AssociatedEndpoint = Connection;
        ReferenceObject(Bucket->AssociatedEndpoint);

        Bucket->Request.RequestNotifyObject = Complete;
        Bucket->Request.RequestContext = Context;
        InsertTailList( &Listener->ListenRequest, &Bucket->Entry );
        Status = STATUS_PENDING;
    }
    else
        Status = STATUS_NO_MEMORY;

    UnlockObject(Listener, OldIrql);

    return Status;
}
