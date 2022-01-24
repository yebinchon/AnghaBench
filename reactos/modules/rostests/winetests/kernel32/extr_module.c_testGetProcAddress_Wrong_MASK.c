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
typedef  int /*<<< orphan*/ * HMODULE ;
typedef  scalar_t__ FARPROC ;

/* Variables and functions */
 scalar_t__ ERROR_MOD_NOT_FOUND ; 
 scalar_t__ ERROR_PROC_NOT_FOUND ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 

__attribute__((used)) static void FUNC4(void)
{
    FARPROC fp;

    FUNC2(0xdeadbeef);
    fp = FUNC1(NULL, "non_ex_call");
    FUNC3( !fp, "non_ex_call should not be found\n");
    FUNC3( FUNC0() == ERROR_PROC_NOT_FOUND, "Expected ERROR_PROC_NOT_FOUND, got %d\n", FUNC0() );

    FUNC2(0xdeadbeef);
    fp = FUNC1((HMODULE)0xdeadbeef, "non_ex_call");
    FUNC3( !fp, "non_ex_call should not be found\n");
    FUNC3( FUNC0() == ERROR_MOD_NOT_FOUND, "Expected ERROR_MOD_NOT_FOUND, got %d\n", FUNC0() );
}