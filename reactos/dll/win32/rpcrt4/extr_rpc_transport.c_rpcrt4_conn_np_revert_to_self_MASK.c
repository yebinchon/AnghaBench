#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  ctx; scalar_t__ AuthInfo; } ;
typedef  TYPE_1__ RpcConnection ;
typedef  int /*<<< orphan*/  RPC_STATUS ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  RPC_S_NO_CONTEXT_AVAILABLE ; 
 int /*<<< orphan*/  RPC_S_OK ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static RPC_STATUS FUNC6(RpcConnection *conn)
{
    BOOL ret;

    FUNC4("(%p)\n", conn);

    if (conn->AuthInfo && FUNC3(&conn->ctx))
        return FUNC1(conn);

    ret = FUNC2();
    if (!ret)
    {
        FUNC5("RevertToSelf failed with error %u\n", FUNC0());
        return RPC_S_NO_CONTEXT_AVAILABLE;
    }
    return RPC_S_OK;
}