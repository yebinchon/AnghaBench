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
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int FUNC1 () ; 
 int FUNC2 (char*,char*,int) ; 

__attribute__((used)) static void FUNC3(int min_level) {
        int current_lvl, r;

        /* Set the logging level to be able to see messages with log level smaller or equal to min_level */

        current_lvl = FUNC1();
        if (current_lvl < 0 || current_lvl >= min_level + 1)
                return;

        r = FUNC2("kernel/printk", "%i", min_level + 1);
        if (r < 0)
                FUNC0(r, "Failed to bump kernel.printk to %i: %m", min_level + 1);
}