
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ref; int * wait_release; } ;
typedef TYPE_1__ RpcConnection ;
typedef int * HANDLE ;


 int CloseHandle (int *) ;
 int * CreateEventW (int *,int ,int ,int *) ;
 int FALSE ;
 int INFINITE ;
 int RPCRT4_ReleaseConnection (TYPE_1__*) ;
 int TRUE ;
 int WaitForSingleObject (int *,int ) ;

void rpcrt4_conn_release_and_wait(RpcConnection *connection)
{
    HANDLE event = ((void*)0);

    if (connection->ref > 1)
        event = connection->wait_release = CreateEventW(((void*)0), TRUE, FALSE, ((void*)0));

    RPCRT4_ReleaseConnection(connection);

    if(event)
    {
        WaitForSingleObject(event, INFINITE);
        CloseHandle(event);
    }
}
