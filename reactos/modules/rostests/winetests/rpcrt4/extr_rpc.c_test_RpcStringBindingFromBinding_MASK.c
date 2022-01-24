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
typedef  int /*<<< orphan*/  handle_t ;
typedef  scalar_t__ RPC_STATUS ;
typedef  scalar_t__ RPC_CSTR ;

/* Variables and functions */
 scalar_t__ RPC_S_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,unsigned char*,unsigned char*,unsigned char*,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char const*,char*) ; 

__attribute__((used)) static void FUNC7(void)
{
    static unsigned char ncacn_np[] = "ncacn_np";
    static unsigned char address[] = ".";
    static unsigned char endpoint[] = "\\pipe\\wine_rpc_test";
    RPC_STATUS status;
    handle_t handle;
    RPC_CSTR binding;

    status = FUNC3(NULL, ncacn_np, address,
                                     endpoint, NULL, &binding);
    FUNC5(status == RPC_S_OK, "RpcStringBindingCompose failed (%u)\n", status);

    status = FUNC1(binding, &handle);
    FUNC5(status == RPC_S_OK, "RpcBindingFromStringBinding failed (%u)\n", status);
    FUNC4(&binding);

    status = FUNC2(handle, &binding);
    FUNC5(status == RPC_S_OK, "RpcStringBindingFromBinding failed with error %u\n", status);

    FUNC5(!FUNC6((const char *)binding, "ncacn_np:.[\\\\pipe\\\\wine_rpc_test]"),
       "binding string didn't match what was expected: \"%s\"\n", binding);
    FUNC4(&binding);

    status = FUNC0(&handle);
    FUNC5(status == RPC_S_OK, "RpcBindingFree failed with error %u\n", status);
}