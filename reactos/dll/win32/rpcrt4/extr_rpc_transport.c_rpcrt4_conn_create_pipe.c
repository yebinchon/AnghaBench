
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ pipe; int listen_pipe; } ;
typedef TYPE_1__ RpcConnection_np ;
typedef int RpcConnection ;
typedef int RPC_STATUS ;


 scalar_t__ CreateNamedPipeA (int ,int,int,int ,int ,int ,int,int *) ;
 scalar_t__ ERROR_FILE_EXISTS ;
 int FILE_FLAG_OVERLAPPED ;
 scalar_t__ GetLastError () ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int PIPE_ACCESS_DUPLEX ;
 int PIPE_READMODE_MESSAGE ;
 int PIPE_TYPE_MESSAGE ;
 int PIPE_UNLIMITED_INSTANCES ;
 int RPC_MAX_PACKET_SIZE ;
 int RPC_S_CANT_CREATE_ENDPOINT ;
 int RPC_S_DUPLICATE_ENDPOINT ;
 int RPC_S_OK ;
 int TRACE (char*,int ) ;
 int WARN (char*,scalar_t__) ;

__attribute__((used)) static RPC_STATUS rpcrt4_conn_create_pipe(RpcConnection *conn)
{
    RpcConnection_np *connection = (RpcConnection_np *) conn;

    TRACE("listening on %s\n", connection->listen_pipe);

    connection->pipe = CreateNamedPipeA(connection->listen_pipe, PIPE_ACCESS_DUPLEX | FILE_FLAG_OVERLAPPED,
                                        PIPE_TYPE_MESSAGE | PIPE_READMODE_MESSAGE,
                                        PIPE_UNLIMITED_INSTANCES,
                                        RPC_MAX_PACKET_SIZE, RPC_MAX_PACKET_SIZE, 5000, ((void*)0));
    if (connection->pipe == INVALID_HANDLE_VALUE)
    {
        WARN("CreateNamedPipe failed with error %d\n", GetLastError());
        if (GetLastError() == ERROR_FILE_EXISTS)
            return RPC_S_DUPLICATE_ENDPOINT;
        else
            return RPC_S_CANT_CREATE_ENDPOINT;
    }

    return RPC_S_OK;
}
