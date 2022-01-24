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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

int FUNC6(int argc, char *argv[]) {
        FUNC1("CPU_ALLOC_SIZE(1) = %zu", FUNC0(1));
        FUNC1("CPU_ALLOC_SIZE(9) = %zu", FUNC0(9));
        FUNC1("CPU_ALLOC_SIZE(64) = %zu", FUNC0(64));
        FUNC1("CPU_ALLOC_SIZE(65) = %zu", FUNC0(65));
        FUNC1("CPU_ALLOC_SIZE(1024) = %zu", FUNC0(1024));
        FUNC1("CPU_ALLOC_SIZE(1025) = %zu", FUNC0(1025));
        FUNC1("CPU_ALLOC_SIZE(8191) = %zu", FUNC0(8191));

        FUNC4();
        FUNC5();
        FUNC3();
        FUNC2();

        return 0;
}