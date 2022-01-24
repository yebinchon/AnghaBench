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
typedef  int /*<<< orphan*/  ExecContext ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  TTY_GID ; 
 int /*<<< orphan*/  TTY_MODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,char const*) ; 

void FUNC6(ExecContext *c) {
        int r;

        FUNC0(c);

        /* First, reset the TTY (possibly kicking everybody else from the TTY) */
        FUNC4(c, NULL);

        /* And then undo what chown_terminal() did earlier. Note that we only do this if we have a path
         * configured. If the TTY was passed to us as file descriptor we assume the TTY is opened and managed
         * by whoever passed it to us and thus knows better when and how to chmod()/chown() it back. */

        if (FUNC2(c)) {
                const char *path;

                path = FUNC3(c);
                if (path) {
                        r = FUNC1(path, TTY_MODE, 0, TTY_GID);
                        if (r < 0 && r != -ENOENT)
                                FUNC5(r, "Failed to reset TTY ownership/access mode of %s, ignoring: %m", path);
                }
        }
}