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
 int /*<<< orphan*/  FUNC2 (char*) ; 
 void* pGetComputerNameExA ; 
 void* pGetComputerNameExW ; 
 void* pGetUserProfileDirectoryA ; 
 void* pOpenProcessToken ; 

__attribute__((used)) static void FUNC3(void)
{
    HMODULE hkernel32 = FUNC0("kernel32.dll");
    HMODULE hadvapi32 = FUNC0("advapi32.dll");
    HMODULE huserenv = FUNC2("userenv.dll");

    pGetComputerNameExA = (void *)FUNC1(hkernel32, "GetComputerNameExA");
    pGetComputerNameExW = (void *)FUNC1(hkernel32, "GetComputerNameExW");
    pOpenProcessToken = (void *)FUNC1(hadvapi32, "OpenProcessToken");
    pGetUserProfileDirectoryA = (void *)FUNC1(huserenv,
                                                       "GetUserProfileDirectoryA");
}