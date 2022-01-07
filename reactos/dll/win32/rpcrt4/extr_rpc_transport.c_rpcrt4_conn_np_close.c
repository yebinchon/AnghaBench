
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ event_cache; scalar_t__ listen_event; scalar_t__ pipe; } ;
typedef TYPE_1__ RpcConnection_np ;
typedef int RpcConnection ;


 int CloseHandle (scalar_t__) ;
 int FlushFileBuffers (scalar_t__) ;

__attribute__((used)) static int rpcrt4_conn_np_close(RpcConnection *conn)
{
    RpcConnection_np *connection = (RpcConnection_np *) conn;
    if (connection->pipe)
    {
        FlushFileBuffers(connection->pipe);
        CloseHandle(connection->pipe);
        connection->pipe = 0;
    }
    if (connection->listen_event)
    {
        CloseHandle(connection->listen_event);
        connection->listen_event = 0;
    }
    if (connection->event_cache)
    {
        CloseHandle(connection->event_cache);
        connection->event_cache = 0;
    }
    return 0;
}
