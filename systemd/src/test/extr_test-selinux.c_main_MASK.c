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
 char* SYSTEMD_BINARY_PATH ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 

int FUNC6(int argc, char **argv) {
        const char *path = SYSTEMD_BINARY_PATH;
        if (argc >= 2)
                path = argv[1];

        FUNC4(LOG_DEBUG);

        FUNC5();
        FUNC2();
        FUNC3(path);
        FUNC1(path);
        FUNC0();

        return 0;
}