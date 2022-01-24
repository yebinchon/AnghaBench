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
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

int FUNC2(int argc, char *argv[]) {
        FUNC1(LOG_DEBUG);

        FUNC0("0");
        /* The value $SYSTEMD_MEMPOOL= is cached. So the following
         * test should also succeed. */
        FUNC0("1");

        return 0;
}