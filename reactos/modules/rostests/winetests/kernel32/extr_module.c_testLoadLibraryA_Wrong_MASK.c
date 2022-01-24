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
 scalar_t__ ERROR_MOD_NOT_FOUND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 

__attribute__((used)) static void FUNC5(void)
{
    HMODULE hModule;

    /* Try to load a nonexistent dll */
    FUNC3(0xdeadbeef);
    hModule = FUNC2("non_ex_pv.dll");
    FUNC4( !hModule, "non_ex_pv.dll should be not loadable\n");
    FUNC4( FUNC1() == ERROR_MOD_NOT_FOUND, "Expected ERROR_MOD_NOT_FOUND, got %d\n", FUNC1() );

    /* Just in case */
    FUNC0(hModule);
}