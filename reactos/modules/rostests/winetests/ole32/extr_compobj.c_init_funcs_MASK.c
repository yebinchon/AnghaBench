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
 void* pCoGetApartmentType ; 
 void* pCoGetContextToken ; 
 void* pCoGetObjectContext ; 
 void* pCoGetTreatAsClass ; 
 void* pCoInitializeEx ; 
 void* pCoSwitchCallContext ; 
 void* pCoTreatAsClass ; 
 void* pCreateActCtxW ; 
 void* pDeactivateActCtx ; 
 void* pIsWow64Process ; 
 void* pRegDeleteKeyExA ; 
 void* pRegOverridePredefKey ; 
 void* pReleaseActCtx ; 

__attribute__((used)) static void FUNC2(void)
{
    HMODULE hOle32 = FUNC0("ole32");
    HMODULE hAdvapi32 = FUNC0("advapi32");
    HMODULE hkernel32 = FUNC0("kernel32");

    pCoGetObjectContext = (void*)FUNC1(hOle32, "CoGetObjectContext");
    pCoSwitchCallContext = (void*)FUNC1(hOle32, "CoSwitchCallContext");
    pCoGetTreatAsClass = (void*)FUNC1(hOle32,"CoGetTreatAsClass");
    pCoTreatAsClass = (void*)FUNC1(hOle32,"CoTreatAsClass");
    pCoGetContextToken = (void*)FUNC1(hOle32, "CoGetContextToken");
    pCoGetApartmentType = (void*)FUNC1(hOle32, "CoGetApartmentType");
    pRegDeleteKeyExA = (void*)FUNC1(hAdvapi32, "RegDeleteKeyExA");
    pRegOverridePredefKey = (void*)FUNC1(hAdvapi32, "RegOverridePredefKey");
    pCoInitializeEx = (void*)FUNC1(hOle32, "CoInitializeEx");

    pActivateActCtx = (void*)FUNC1(hkernel32, "ActivateActCtx");
    pCreateActCtxW = (void*)FUNC1(hkernel32, "CreateActCtxW");
    pDeactivateActCtx = (void*)FUNC1(hkernel32, "DeactivateActCtx");
    pIsWow64Process = (void*)FUNC1(hkernel32, "IsWow64Process");
    pReleaseActCtx = (void*)FUNC1(hkernel32, "ReleaseActCtx");
}