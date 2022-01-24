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
 void* pCreateWellKnownSid ; 
 void* pGetComputerNameExA ; 
 void* pGetEventLogInformation ; 
 void* pWow64DisableWow64FsRedirection ; 
 void* pWow64RevertWow64FsRedirection ; 

__attribute__((used)) static void FUNC2(void)
{
    HMODULE hadvapi32 = FUNC0("advapi32.dll");
    HMODULE hkernel32 = FUNC0("kernel32.dll");

    pCreateWellKnownSid = (void*)FUNC1(hadvapi32, "CreateWellKnownSid");
    pGetEventLogInformation = (void*)FUNC1(hadvapi32, "GetEventLogInformation");

    pGetComputerNameExA = (void*)FUNC1(hkernel32, "GetComputerNameExA");
    pWow64DisableWow64FsRedirection = (void*)FUNC1(hkernel32, "Wow64DisableWow64FsRedirection");
    pWow64RevertWow64FsRedirection = (void*)FUNC1(hkernel32, "Wow64RevertWow64FsRedirection");
}