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
typedef  scalar_t__ RPC_STATUS ;
typedef  int /*<<< orphan*/  RPC_BINDING_HANDLE ;
typedef  int /*<<< orphan*/ * PWSTR ;
typedef  int /*<<< orphan*/  LPWSTR ;
typedef  scalar_t__ LPCWSTR ;

/* Variables and functions */
 scalar_t__ RPC_S_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **) ; 

RPC_STATUS
FUNC3(LPCWSTR pszMachine,
           RPC_BINDING_HANDLE* BindingHandle)
{
    PWSTR pszStringBinding = NULL;
    RPC_STATUS Status;

    Status = FUNC1(NULL,
                                      L"ncacn_np",
                                      (LPWSTR)pszMachine,
                                      L"\\pipe\\plugplay",
                                      NULL,
                                      &pszStringBinding);
    if (Status != RPC_S_OK)
        return Status;

    Status = FUNC0(pszStringBinding,
                                          BindingHandle);

    FUNC2(&pszStringBinding);

    return Status;
}