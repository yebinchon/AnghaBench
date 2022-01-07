
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sock; int cancel_event; int sock_event; } ;
typedef TYPE_1__ RpcConnection_tcp ;
typedef int RpcConnection ;


 int CloseHandle (int ) ;
 int TRACE (char*,int) ;
 int closesocket (int) ;

__attribute__((used)) static int rpcrt4_conn_tcp_close(RpcConnection *conn)
{
    RpcConnection_tcp *connection = (RpcConnection_tcp *) conn;

    TRACE("%d\n", connection->sock);

    if (connection->sock != -1)
        closesocket(connection->sock);
    connection->sock = -1;
    CloseHandle(connection->sock_event);
    CloseHandle(connection->cancel_event);
    return 0;
}
