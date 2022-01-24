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
typedef  int /*<<< orphan*/  HMODULE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  old_windows_version ; 
 void* pNDRSContextMarshall2 ; 
 void* pNDRSContextUnmarshall2 ; 
 void* pRpcBindingSetAuthInfoExA ; 
 void* pRpcServerRegisterAuthInfoA ; 
 void* pRpcServerRegisterIfEx ; 

__attribute__((used)) static void FUNC2(void)
{
    HMODULE hrpcrt4 = FUNC0("rpcrt4.dll");

    pNDRSContextMarshall2 = (void *)FUNC1(hrpcrt4, "NDRSContextMarshall2");
    pNDRSContextUnmarshall2 = (void *)FUNC1(hrpcrt4, "NDRSContextUnmarshall2");
    pRpcServerRegisterIfEx = (void *)FUNC1(hrpcrt4, "RpcServerRegisterIfEx");
    pRpcBindingSetAuthInfoExA = (void *)FUNC1(hrpcrt4, "RpcBindingSetAuthInfoExA");
    pRpcServerRegisterAuthInfoA = (void *)FUNC1(hrpcrt4, "RpcServerRegisterAuthInfoA");

    if (!pNDRSContextMarshall2) old_windows_version = TRUE;
}