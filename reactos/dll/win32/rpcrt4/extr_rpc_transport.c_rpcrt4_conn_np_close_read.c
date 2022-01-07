
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int io_status; int pipe; int read_closed; } ;
typedef TYPE_1__ RpcConnection_np ;
typedef int RpcConnection ;
typedef int IO_STATUS_BLOCK ;


 int NtCancelIoFile (int ,int *) ;
 int NtCancelIoFileEx (int ,int *,int *) ;
 int TRUE ;

__attribute__((used)) static void rpcrt4_conn_np_close_read(RpcConnection *conn)
{
    RpcConnection_np *connection = (RpcConnection_np*)conn;
    IO_STATUS_BLOCK io_status;

    connection->read_closed = TRUE;



    NtCancelIoFileEx(connection->pipe, &connection->io_status, &io_status);

}
