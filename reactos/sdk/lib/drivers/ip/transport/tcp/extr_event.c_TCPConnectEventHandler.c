
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int err_t ;
typedef int VOID ;
struct TYPE_9__ {int Lock; int ConnectRequest; } ;
struct TYPE_8__ {scalar_t__ Information; int Status; } ;
typedef TYPE_1__* PTDI_BUCKET ;
typedef int PLIST_ENTRY ;
typedef TYPE_2__* PCONNECTION_ENDPOINT ;


 TYPE_1__* CONTAINING_RECORD (int ,int ,int ) ;
 int CompleteBucket (TYPE_2__*,TYPE_1__*,int ) ;
 int DereferenceObject (TYPE_2__*) ;
 int ExInterlockedRemoveHeadList (int *,int *) ;
 int FALSE ;
 int ReferenceObject (TYPE_2__*) ;
 int TCPTranslateError (int const) ;
 int TDI_BUCKET ;

VOID
TCPConnectEventHandler(void *arg, const err_t err)
{
    PCONNECTION_ENDPOINT Connection = (PCONNECTION_ENDPOINT)arg;
    PTDI_BUCKET Bucket;
    PLIST_ENTRY Entry;

    ReferenceObject(Connection);

    while ((Entry = ExInterlockedRemoveHeadList(&Connection->ConnectRequest, &Connection->Lock)))
    {

        Bucket = CONTAINING_RECORD( Entry, TDI_BUCKET, Entry );

        Bucket->Status = TCPTranslateError(err);
        Bucket->Information = 0;

        CompleteBucket(Connection, Bucket, FALSE);
    }

    DereferenceObject(Connection);
}
