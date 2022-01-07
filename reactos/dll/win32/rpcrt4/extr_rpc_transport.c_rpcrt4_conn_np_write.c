
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ Status; } ;
struct TYPE_9__ {unsigned int Information; TYPE_1__ u; } ;
struct TYPE_8__ {int pipe; } ;
typedef TYPE_2__ RpcConnection_np ;
typedef int RpcConnection ;
typedef scalar_t__ NTSTATUS ;
typedef TYPE_3__ IO_STATUS_BLOCK ;
typedef int HANDLE ;


 int INFINITE ;
 scalar_t__ NtWriteFile (int ,int ,int *,int *,TYPE_3__*,void const*,unsigned int,int *,int *) ;
 scalar_t__ STATUS_PENDING ;
 int WaitForSingleObject (int ,int ) ;
 int assert (int) ;
 int get_np_event (TYPE_2__*) ;
 int release_np_event (TYPE_2__*,int ) ;

__attribute__((used)) static int rpcrt4_conn_np_write(RpcConnection *conn, const void *buffer, unsigned int count)
{
    RpcConnection_np *connection = (RpcConnection_np *) conn;
    IO_STATUS_BLOCK io_status;
    HANDLE event;
    NTSTATUS status;

    event = get_np_event(connection);
    if (!event)
        return -1;

    status = NtWriteFile(connection->pipe, event, ((void*)0), ((void*)0), &io_status, buffer, count, ((void*)0), ((void*)0));
    if (status == STATUS_PENDING)
    {
        WaitForSingleObject(event, INFINITE);
        status = io_status.u.Status;
    }
    release_np_event(connection, event);
    if (status)
        return -1;

    assert(io_status.Information == count);
    return count;
}
