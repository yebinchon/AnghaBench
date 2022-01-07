
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {TYPE_1__* protseq; int protseq_entry; int CookieAuth; int QOS; int AuthInfo; int Endpoint; int NetworkAddr; int server; } ;
struct TYPE_9__ {int cs; int connections; } ;
typedef TYPE_2__ RpcConnection ;
typedef scalar_t__ RPC_STATUS ;


 int EnterCriticalSection (int *) ;
 int LeaveCriticalSection (int *) ;
 scalar_t__ RPCRT4_CreateConnection (TYPE_2__**,int ,int ,int ,int ,int *,int ,int ,int ) ;
 scalar_t__ RPC_S_OK ;
 int list_add_tail (int *,int *) ;
 int rpcrt4_conn_get_name (TYPE_2__*) ;
 int rpcrt4_conn_handoff (TYPE_2__*,TYPE_2__*) ;

__attribute__((used)) static RpcConnection *rpcrt4_spawn_connection(RpcConnection *old_connection)
{
    RpcConnection *connection;
    RPC_STATUS err;

    err = RPCRT4_CreateConnection(&connection, old_connection->server, rpcrt4_conn_get_name(old_connection),
                                  old_connection->NetworkAddr, old_connection->Endpoint, ((void*)0),
                                  old_connection->AuthInfo, old_connection->QOS, old_connection->CookieAuth);
    if (err != RPC_S_OK)
        return ((void*)0);

    rpcrt4_conn_handoff(old_connection, connection);
    if (old_connection->protseq)
    {
        EnterCriticalSection(&old_connection->protseq->cs);
        connection->protseq = old_connection->protseq;
        list_add_tail(&old_connection->protseq->connections, &connection->protseq_entry);
        LeaveCriticalSection(&old_connection->protseq->cs);
    }
    return connection;
}
