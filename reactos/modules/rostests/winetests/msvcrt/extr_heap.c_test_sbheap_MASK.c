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
typedef  int UINT_PTR ;

/* Variables and functions */
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 void* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 
 void* FUNC5 (void*,int) ; 

__attribute__((used)) static void FUNC6(void)
{
    void *mem;
    int threshold;

    if(sizeof(void*) == 8) {
        FUNC4(!FUNC1(0), "_set_sbh_threshold succeeded\n");
        FUNC4(!FUNC1(1000), "_set_sbh_threshold succeeded\n");
        return;
    }

    mem = FUNC3(1);
    FUNC4(mem != NULL, "malloc failed\n");

    FUNC4(FUNC1(1), "_set_sbh_threshold failed\n");
    threshold = FUNC0();
    FUNC4(threshold == 16, "threshold = %d\n", threshold);

    FUNC4(FUNC1(8), "_set_sbh_threshold failed\n");
    threshold = FUNC0();
    FUNC4(threshold == 16, "threshold = %d\n", threshold);

    FUNC4(FUNC1(1000), "_set_sbh_threshold failed\n");
    threshold = FUNC0();
    FUNC4(threshold == 1008, "threshold = %d\n", threshold);

    FUNC2(mem);

    mem = FUNC3(1);
    FUNC4(mem != NULL, "malloc failed\n");
    FUNC4(!((UINT_PTR)mem & 0xf), "incorrect alignment (%p)\n", mem);

    mem = FUNC5(mem, 10);
    FUNC4(mem != NULL, "realloc failed\n");
    FUNC4(!((UINT_PTR)mem & 0xf), "incorrect alignment (%p)\n", mem);

    FUNC4(FUNC1(0), "_set_sbh_threshold failed\n");
    threshold = FUNC0();
    FUNC4(threshold == 0, "threshold = %d\n", threshold);

    FUNC2(mem);
}