#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/ * handle_t ;
typedef  scalar_t__ RPC_STATUS ;
typedef  int /*<<< orphan*/  LPWSTR ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

__attribute__((used)) static
RPC_STATUS
FUNC4(
    LPWSTR lpServerName,
    handle_t *hBinding)
{
    LPWSTR pszStringBinding;
    RPC_STATUS status;

    FUNC3("DsSetupBind() called\n");

    *hBinding = NULL;

    status = FUNC1(NULL,
                                      L"ncacn_np",
                                      lpServerName,
                                      L"\\pipe\\lsarpc",
                                      NULL,
                                      &pszStringBinding);
    if (status)
    {
        FUNC3("RpcStringBindingCompose returned 0x%x\n", status);
        return status;
    }

    /* Set the binding handle that will be used to bind to the server. */
    status = FUNC0(pszStringBinding,
                                          hBinding);
    if (status)
    {
        FUNC3("RpcBindingFromStringBinding returned 0x%x\n", status);
    }

    status = FUNC2(&pszStringBinding);
    if (status)
    {
        FUNC3("RpcStringFree returned 0x%x\n", status);
    }

    return status;
}