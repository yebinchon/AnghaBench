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
typedef  int usec_t ;

/* Variables and functions */
 int EPERM ; 
 int /*<<< orphan*/  LOG_DEBUG ; 
 int USEC_PER_SEC ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 () ; 
 int FUNC7 (int*) ; 

int FUNC8(int argc, char *argv[]) {
        usec_t t;
        unsigned i, count;
        int r;
        bool slow;

        FUNC3(LOG_DEBUG);

        slow = FUNC2();

        t = slow ? 10 * USEC_PER_SEC : 1 * USEC_PER_SEC;
        count = slow ? 5 : 3;

        r = FUNC7(&t);
        if (r < 0)
                FUNC1(r, "Failed to open watchdog: %m");
        if (r == -EPERM)
                t = 0;

        for (i = 0; i < count; i++) {
                FUNC0("Pinging...");
                r = FUNC6();
                if (r < 0)
                        FUNC1(r, "Failed to ping watchdog: %m");

                FUNC4(t/2);
        }

        FUNC5(true);
        return 0;
}