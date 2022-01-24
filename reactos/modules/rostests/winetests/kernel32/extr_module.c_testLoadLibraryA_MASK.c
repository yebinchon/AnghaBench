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
typedef  int /*<<< orphan*/ * FARPROC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,...) ; 

__attribute__((used)) static void FUNC6(void)
{
    HMODULE hModule, hModule1;
    FARPROC fp;

    FUNC4(0xdeadbeef);
    hModule = FUNC3("kernel32.dll");
    FUNC5( hModule != NULL, "kernel32.dll should be loadable\n");
    FUNC5( FUNC1() == 0xdeadbeef, "GetLastError should be 0xdeadbeef but is %d\n", FUNC1());

    fp = FUNC2(hModule, "CreateFileA");
    FUNC5( fp != NULL, "CreateFileA should be there\n");
    FUNC5( FUNC1() == 0xdeadbeef, "GetLastError should be 0xdeadbeef but is %d\n", FUNC1());

    FUNC4(0xdeadbeef);
    hModule1 = FUNC3("kernel32   ");
    FUNC5( hModule1 != NULL, "\"kernel32   \" should be loadable\n" );
    FUNC5( FUNC1() == 0xdeadbeef, "GetLastError should be 0xdeadbeef but is %d\n", FUNC1() );
    FUNC5( hModule == hModule1, "Loaded wrong module\n" );
    FUNC0(hModule1);
    FUNC0(hModule);
}