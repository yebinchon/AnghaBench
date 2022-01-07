
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_6__ {int AssociatedEndpoint; } ;
typedef TYPE_1__* PTDI_BUCKET ;
typedef int PCONNECTION_ENDPOINT ;
typedef scalar_t__ BOOLEAN ;


 int BucketCompletionWorker (TYPE_1__*) ;
 int ChewCreate (int (*) (TYPE_1__*),TYPE_1__*) ;
 int ReferenceObject (int ) ;

VOID
CompleteBucket(PCONNECTION_ENDPOINT Connection, PTDI_BUCKET Bucket, const BOOLEAN Synchronous)
{
    ReferenceObject(Connection);
    Bucket->AssociatedEndpoint = Connection;
    if (Synchronous)
    {
        BucketCompletionWorker(Bucket);
    }
    else
    {
        ChewCreate(BucketCompletionWorker, Bucket);
    }
}
