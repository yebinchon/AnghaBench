
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sock; } ;
typedef TYPE_1__ RpcConnection_tcp ;
typedef int RpcConnection ;


 int SD_RECEIVE ;
 int shutdown (int ,int ) ;

__attribute__((used)) static void rpcrt4_conn_tcp_close_read(RpcConnection *conn)
{
    RpcConnection_tcp *connection = (RpcConnection_tcp *) conn;
    shutdown(connection->sock, SD_RECEIVE);
}
