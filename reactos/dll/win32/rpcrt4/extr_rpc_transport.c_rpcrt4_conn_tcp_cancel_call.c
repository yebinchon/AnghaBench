
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cancel_event; } ;
typedef TYPE_1__ RpcConnection_tcp ;
typedef int RpcConnection ;


 int SetEvent (int ) ;
 int TRACE (char*,TYPE_1__*) ;

__attribute__((used)) static void rpcrt4_conn_tcp_cancel_call(RpcConnection *conn)
{
    RpcConnection_tcp *connection = (RpcConnection_tcp *) conn;

    TRACE("%p\n", connection);

    SetEvent(connection->cancel_event);
}
