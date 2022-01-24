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
 int /*<<< orphan*/  O_RDWR ; 
 int FUNC0 () ; 
 int FUNC1 (int,char*) ; 
 int FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int,int,int) ; 

__attribute__((used)) static int FUNC4(void) {
        int terminal;
        int r;

        terminal = FUNC2("/dev/console", O_RDWR);
        if (terminal < 0)
                return FUNC1(terminal, "Failed to open console: %m");

        /* Make sure we can continue logging to the original stderr, even if
         * stderr points elsewhere now */
        r = FUNC0();
        if (r < 0)
                return FUNC1(r, "Failed to duplicate stderr: %m");

        /* invalidates 'terminal' on success and failure */
        r = FUNC3(terminal, terminal, terminal);
        if (r < 0)
                return FUNC1(r, "Failed to move console to stdin/stdout/stderr: %m");

        return 0;
}