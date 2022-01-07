
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pipe; } ;
typedef TYPE_1__ RpcConnection_np ;
typedef int RpcConnection ;


 int CancelIoEx (int ,int *) ;

__attribute__((used)) static void rpcrt4_conn_np_cancel_call(RpcConnection *conn)
{
    RpcConnection_np *connection = (RpcConnection_np *)conn;
    CancelIoEx(connection->pipe, ((void*)0));
}
