
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ Status; } ;
struct TYPE_9__ {int Information; TYPE_1__ u; } ;
struct TYPE_8__ {TYPE_5__ io_status; int pipe; scalar_t__ read_closed; } ;
typedef TYPE_2__ RpcConnection_np ;
typedef int RpcConnection ;
typedef scalar_t__ NTSTATUS ;
typedef int IO_STATUS_BLOCK ;
typedef int HANDLE ;


 int INFINITE ;
 int NtCancelIoFile (int ,int *) ;
 int NtCancelIoFileEx (int ,TYPE_5__*,int *) ;
 scalar_t__ NtReadFile (int ,int ,int *,int *,TYPE_5__*,void*,unsigned int,int *,int *) ;
 scalar_t__ STATUS_BUFFER_OVERFLOW ;
 scalar_t__ STATUS_CANCELLED ;
 scalar_t__ STATUS_PENDING ;
 int WaitForSingleObject (int ,int ) ;
 int get_np_event (TYPE_2__*) ;
 int release_np_event (TYPE_2__*,int ) ;

__attribute__((used)) static int rpcrt4_conn_np_read(RpcConnection *conn, void *buffer, unsigned int count)
{
    RpcConnection_np *connection = (RpcConnection_np *) conn;
    HANDLE event;
    NTSTATUS status;

    event = get_np_event(connection);
    if (!event)
        return -1;

    if (connection->read_closed)
        status = STATUS_CANCELLED;
    else
        status = NtReadFile(connection->pipe, event, ((void*)0), ((void*)0), &connection->io_status, buffer, count, ((void*)0), ((void*)0));
    if (status == STATUS_PENDING)
    {

        if (connection->read_closed)
        {
            IO_STATUS_BLOCK io_status;



            NtCancelIoFileEx(connection->pipe, &connection->io_status, &io_status);

        }
        WaitForSingleObject(event, INFINITE);
        status = connection->io_status.u.Status;
    }
    release_np_event(connection, event);
    return status && status != STATUS_BUFFER_OVERFLOW ? -1 : connection->io_status.Information;
}
