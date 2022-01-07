
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_4__ {int RequestContext; scalar_t__ RequestNotifyObject; } ;
struct TYPE_5__ {int AssociatedEndpoint; int Information; int Status; TYPE_1__ Request; } ;
typedef int PVOID ;
typedef TYPE_2__* PTDI_BUCKET ;
typedef int (* PTCP_COMPLETION_ROUTINE ) (int ,int ,int ) ;


 int DereferenceObject (int ) ;
 int ExFreeToNPagedLookasideList (int *,TYPE_2__*) ;
 int TdiBucketLookasideList ;

__attribute__((used)) static
VOID
BucketCompletionWorker(PVOID Context)
{
    PTDI_BUCKET Bucket = (PTDI_BUCKET)Context;
    PTCP_COMPLETION_ROUTINE Complete;

    Complete = (PTCP_COMPLETION_ROUTINE)Bucket->Request.RequestNotifyObject;

    Complete(Bucket->Request.RequestContext, Bucket->Status, Bucket->Information);

    DereferenceObject(Bucket->AssociatedEndpoint);

    ExFreeToNPagedLookasideList(&TdiBucketLookasideList, Bucket);
}
