
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int PCONNECTION_ENDPOINT ;
typedef int NTSTATUS ;


 int DereferenceObject (int ) ;
 int FlushConnectQueue (int ,int ) ;
 int FlushListenQueue (int ,int ) ;
 int FlushReceiveQueue (int ,int ,int ) ;
 int FlushSendQueue (int ,int ,int ) ;
 int FlushShutdownQueue (int ,int ,int ) ;
 int ReferenceObject (int ) ;
 int STATUS_FILE_CLOSED ;
 int STATUS_SUCCESS ;
 int TRUE ;

VOID
FlushAllQueues(PCONNECTION_ENDPOINT Connection, NTSTATUS Status)
{
    ReferenceObject(Connection);


    FlushReceiveQueue(Connection, Status, TRUE);


    if (Status == STATUS_SUCCESS)
    {
        Status = STATUS_FILE_CLOSED;
    }


    FlushListenQueue(Connection, Status);


    FlushSendQueue(Connection, Status, TRUE);


    FlushConnectQueue(Connection, Status);


    FlushShutdownQueue(Connection, Status, TRUE);

    DereferenceObject(Connection);
}
