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
 int /*<<< orphan*/  LOG_TARGET_AUTO ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(void) {
        /* Sets up logging the way it is most appropriate for running a program as a service. Note that using this
         * doesn't make the binary unsuitable for invocation on the command line, as log output will still go to the
         * terminal if invoked interactively. */

        FUNC2(LOG_TARGET_AUTO);
        FUNC1();
        (void) FUNC0();
}