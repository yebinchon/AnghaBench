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
typedef  int /*<<< orphan*/  Unit ;
typedef  scalar_t__ JobType ;

/* Variables and functions */
 int EEXIST ; 
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__) ; 

int FUNC2(JobType *a, JobType b, Unit *u) {
        JobType t;

        t = FUNC1(*a, b);
        if (t < 0)
                return -EEXIST;

        *a = FUNC0(t, u);
        return 0;
}