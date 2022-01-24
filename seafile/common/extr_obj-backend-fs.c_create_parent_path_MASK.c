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
 int /*<<< orphan*/  G_FILE_TEST_EXISTS ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*,int) ; 
 char* FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6 (const char *path)
{
    char *dir = FUNC3 (path);
    if (!dir)
        return -1;

    if (FUNC0 (dir, G_FILE_TEST_EXISTS)) {
        FUNC1 (dir);
        return 0;
    }

    if (FUNC2 (dir, 0777) < 0) {
        FUNC4 ("Failed to create object parent path %s: %s.\n",
                      dir, FUNC5(errno));
        FUNC1 (dir);
        return -1;
    }

    FUNC1 (dir);
    return 0;
}