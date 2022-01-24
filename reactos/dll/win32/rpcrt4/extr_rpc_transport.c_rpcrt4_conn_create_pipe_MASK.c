#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ pipe; int /*<<< orphan*/  listen_pipe; } ;
typedef  TYPE_1__ RpcConnection_np ;
typedef  int /*<<< orphan*/  RpcConnection ;
typedef  int /*<<< orphan*/  RPC_STATUS ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 scalar_t__ ERROR_FILE_EXISTS ; 
 int FILE_FLAG_OVERLAPPED ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int PIPE_ACCESS_DUPLEX ; 
 int PIPE_READMODE_MESSAGE ; 
 int PIPE_TYPE_MESSAGE ; 
 int /*<<< orphan*/  PIPE_UNLIMITED_INSTANCES ; 
 int /*<<< orphan*/  RPC_MAX_PACKET_SIZE ; 
 int /*<<< orphan*/  RPC_S_CANT_CREATE_ENDPOINT ; 
 int /*<<< orphan*/  RPC_S_DUPLICATE_ENDPOINT ; 
 int /*<<< orphan*/  RPC_S_OK ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__) ; 

__attribute__((used)) static RPC_STATUS FUNC4(RpcConnection *conn)
{
    RpcConnection_np *connection = (RpcConnection_np *) conn;

    FUNC2("listening on %s\n", connection->listen_pipe);

    connection->pipe = FUNC0(connection->listen_pipe, PIPE_ACCESS_DUPLEX | FILE_FLAG_OVERLAPPED,
                                        PIPE_TYPE_MESSAGE | PIPE_READMODE_MESSAGE,
                                        PIPE_UNLIMITED_INSTANCES,
                                        RPC_MAX_PACKET_SIZE, RPC_MAX_PACKET_SIZE, 5000, NULL);
    if (connection->pipe == INVALID_HANDLE_VALUE)
    {
        FUNC3("CreateNamedPipe failed with error %d\n", FUNC1());
        if (FUNC1() == ERROR_FILE_EXISTS)
            return RPC_S_DUPLICATE_ENDPOINT;
        else
            return RPC_S_CANT_CREATE_ENDPOINT;
    }

    return RPC_S_OK;
}