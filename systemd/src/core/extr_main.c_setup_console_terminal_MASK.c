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
 int /*<<< orphan*/  arg_system ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void FUNC4(bool skip_setup) {

        if (!arg_system)
                return;

        /* Become a session leader if we aren't one yet. */
        (void) FUNC3();

        /* If we are init, we connect stdin/stdout/stderr to /dev/null and make sure we don't have a controlling
         * tty. */
        (void) FUNC2();

        /* Reset the console, but only if this is really init and we are freshly booted */
        if (FUNC1() == 1 && !skip_setup)
                (void) FUNC0();
}