#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ Status; } ;
struct TYPE_9__ {int Information; TYPE_1__ u; } ;
struct TYPE_8__ {TYPE_5__ io_status; int /*<<< orphan*/  pipe; scalar_t__ read_closed; } ;
typedef  TYPE_2__ RpcConnection_np ;
typedef  int /*<<< orphan*/  RpcConnection ;
typedef  scalar_t__ NTSTATUS ;
typedef  int /*<<< orphan*/  IO_STATUS_BLOCK ;
typedef  int /*<<< orphan*/  HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  INFINITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_5__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_5__*,void*,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ STATUS_BUFFER_OVERFLOW ; 
 scalar_t__ STATUS_CANCELLED ; 
 scalar_t__ STATUS_PENDING ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(RpcConnection *conn, void *buffer, unsigned int count)
{
    RpcConnection_np *connection = (RpcConnection_np *) conn;
    HANDLE event;
    NTSTATUS status;

    event = FUNC4(connection);
    if (!event)
        return -1;

    if (connection->read_closed)
        status = STATUS_CANCELLED;
    else
        status = FUNC2(connection->pipe, event, NULL, NULL, &connection->io_status, buffer, count, NULL, NULL);
    if (status == STATUS_PENDING)
    {
        /* check read_closed again before waiting to avoid a race */
        if (connection->read_closed)
        {
            IO_STATUS_BLOCK io_status;
#ifdef __REACTOS__ /* FIXME: We should also cancel I/O for other threads */
            NtCancelIoFile(connection->pipe, &io_status);
#else
            FUNC1(connection->pipe, &connection->io_status, &io_status);
#endif
        }
        FUNC3(event, INFINITE);
        status = connection->io_status.u.Status;
    }
    FUNC5(connection, event);
    return status && status != STATUS_BUFFER_OVERFLOW ? -1 : connection->io_status.Information;
}