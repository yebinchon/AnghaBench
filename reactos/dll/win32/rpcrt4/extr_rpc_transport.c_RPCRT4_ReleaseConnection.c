
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ wait_release; scalar_t__ assoc; scalar_t__ server_binding; scalar_t__ QOS; scalar_t__ AuthInfo; struct TYPE_8__* CookieAuth; struct TYPE_8__* NetworkOptions; int NetworkAddr; int Endpoint; int ref; TYPE_1__* protseq; int protseq_entry; } ;
struct TYPE_7__ {int cs; } ;
typedef TYPE_2__ RpcConnection ;
typedef scalar_t__ LONG ;


 int EnterCriticalSection (int *) ;
 int GetProcessHeap () ;
 int HeapFree (int ,int ,TYPE_2__*) ;
 scalar_t__ InterlockedDecrement (int *) ;
 int LeaveCriticalSection (int *) ;
 int RPCRT4_CloseConnection (TYPE_2__*) ;
 int RPCRT4_ReleaseBinding (scalar_t__) ;
 int RPCRT4_strfree (int ) ;
 int RpcAssoc_ConnectionReleased (scalar_t__) ;
 int RpcAuthInfo_Release (scalar_t__) ;
 int RpcQualityOfService_Release (scalar_t__) ;
 int SetEvent (scalar_t__) ;
 int TRACE (char*,TYPE_2__*,scalar_t__) ;
 int list_remove (int *) ;

void RPCRT4_ReleaseConnection(RpcConnection *connection)
{
    LONG ref;





    if (connection->protseq)
    {
        EnterCriticalSection(&connection->protseq->cs);
        ref = InterlockedDecrement(&connection->ref);
        if (!ref)
            list_remove(&connection->protseq_entry);
        LeaveCriticalSection(&connection->protseq->cs);
    }
    else
    {
        ref = InterlockedDecrement(&connection->ref);
    }

    TRACE("%p ref=%u\n", connection, ref);

    if (!ref)
    {
        RPCRT4_CloseConnection(connection);
        RPCRT4_strfree(connection->Endpoint);
        RPCRT4_strfree(connection->NetworkAddr);
        HeapFree(GetProcessHeap(), 0, connection->NetworkOptions);
        HeapFree(GetProcessHeap(), 0, connection->CookieAuth);
        if (connection->AuthInfo) RpcAuthInfo_Release(connection->AuthInfo);
        if (connection->QOS) RpcQualityOfService_Release(connection->QOS);


        if (connection->server_binding) RPCRT4_ReleaseBinding(connection->server_binding);
        else if (connection->assoc) RpcAssoc_ConnectionReleased(connection->assoc);

        if (connection->wait_release) SetEvent(connection->wait_release);

        HeapFree(GetProcessHeap(), 0, connection);
    }
}
