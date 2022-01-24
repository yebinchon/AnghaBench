#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  info ;
struct TYPE_4__ {scalar_t__ lpBaseOfDll; int /*<<< orphan*/ * EntryPoint; } ;
typedef  TYPE_1__ MODULEINFO ;
typedef  scalar_t__ HMODULE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,TYPE_1__*,int) ; 

__attribute__((used)) static void FUNC5(void)
{
    MODULEINFO info;
    HMODULE mod;
    BOOL ret;

    mod = FUNC1(NULL);
    FUNC2(&info, 0xAA, sizeof(info));
    ret = FUNC4(FUNC0(), mod, &info, sizeof(info));
    FUNC3(ret, "K32GetModuleInformation failed for main module\n");
    FUNC3(info.lpBaseOfDll == mod, "Wrong info.lpBaseOfDll = %p, expected %p\n", info.lpBaseOfDll, mod);
    FUNC3(info.EntryPoint != NULL, "Expected nonzero entrypoint\n");

    mod = FUNC1("kernel32.dll");
    FUNC2(&info, 0xAA, sizeof(info));
    ret = FUNC4(FUNC0(), mod, &info, sizeof(info));
    FUNC3(ret, "K32GetModuleInformation failed for kernel32 module\n");
    FUNC3(info.lpBaseOfDll == mod, "Wrong info.lpBaseOfDll = %p, expected %p\n", info.lpBaseOfDll, mod);
    FUNC3(info.EntryPoint != NULL, "Expected nonzero entrypoint\n");
}