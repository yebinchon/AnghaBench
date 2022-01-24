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
 void* pActivateActCtx ; 
 void* pCreateActCtxW ; 
 void* pDeactivateActCtx ; 
 void* pIsWow64Process ; 
 void* pRegDeleteKeyExW ; 
 void* pRegisterTypeLibForUser ; 
 void* pReleaseActCtx ; 
 void* pUnRegisterTypeLibForUser ; 

__attribute__((used)) static void FUNC2(void)
{
    HMODULE hmod = FUNC0("oleaut32.dll");
    HMODULE hk32 = FUNC0("kernel32.dll");
    HMODULE hadv = FUNC0("advapi32.dll");

    pRegisterTypeLibForUser = (void *)FUNC1(hmod, "RegisterTypeLibForUser");
    pUnRegisterTypeLibForUser = (void *)FUNC1(hmod, "UnRegisterTypeLibForUser");
    pActivateActCtx = (void *)FUNC1(hk32, "ActivateActCtx");
    pCreateActCtxW = (void *)FUNC1(hk32, "CreateActCtxW");
    pDeactivateActCtx = (void *)FUNC1(hk32, "DeactivateActCtx");
    pReleaseActCtx = (void *)FUNC1(hk32, "ReleaseActCtx");
    pIsWow64Process = (void *)FUNC1(hk32, "IsWow64Process");
    pRegDeleteKeyExW = (void*)FUNC1(hadv, "RegDeleteKeyExW");
}