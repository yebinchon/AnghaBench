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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * test_enumJobsA ; 
 int /*<<< orphan*/ * test_enumJobsB ; 
 int /*<<< orphan*/ * test_jobA ; 
 int /*<<< orphan*/ * test_jobB ; 
 int /*<<< orphan*/ * test_manager ; 

__attribute__((used)) static void FUNC3(void)
{
    if (test_enumJobsB)
        FUNC2(test_enumJobsB);
    test_enumJobsB = NULL;
    if (test_jobB)
        FUNC0(test_jobB);
    test_jobB = NULL;
    if (test_enumJobsA)
        FUNC2(test_enumJobsA);
    test_enumJobsA = NULL;
    if (test_jobA)
        FUNC0(test_jobA);
    test_jobA = NULL;
    if (test_manager)
        FUNC1(test_manager);
    test_manager = NULL;
}