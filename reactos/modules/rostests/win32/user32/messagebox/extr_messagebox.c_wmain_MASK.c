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
typedef  int /*<<< orphan*/  WCHAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

int FUNC4(int argc, WCHAR* argv[])
{
    FUNC3("Testing SoftModalMessageBox()...\n");
    FUNC1();
    FUNC3("\n");

    FUNC3("Press any key to continue...\n");
    FUNC2();
    FUNC3("\n");

    FUNC3("Testing MB_SERVICE_NOTIFICATION...\n");
    FUNC0();
    FUNC3("\n");

    FUNC3("Press any key to quit...\n");
    FUNC2();
    return 0;
}