#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  ctx; scalar_t__ AuthInfo; } ;
struct TYPE_6__ {int /*<<< orphan*/  pipe; } ;
typedef  TYPE_1__ RpcConnection_np ;
typedef  TYPE_2__ RpcConnection ;
typedef  int /*<<< orphan*/  RPC_STATUS ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
#define  ERROR_CANNOT_IMPERSONATE 128 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  RPC_S_NO_CONTEXT_AVAILABLE ; 
 int /*<<< orphan*/  RPC_S_OK ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 

__attribute__((used)) static RPC_STATUS FUNC6(RpcConnection *conn)
{
    RpcConnection_np *npc = (RpcConnection_np *)conn;
    BOOL ret;

    FUNC4("(%p)\n", conn);

    if (conn->AuthInfo && FUNC3(&conn->ctx))
        return FUNC2(conn);

    ret = FUNC1(npc->pipe);
    if (!ret)
    {
        DWORD error = FUNC0();
        FUNC5("ImpersonateNamedPipeClient failed with error %u\n", error);
        switch (error)
        {
        case ERROR_CANNOT_IMPERSONATE:
            return RPC_S_NO_CONTEXT_AVAILABLE;
        }
    }
    return RPC_S_OK;
}