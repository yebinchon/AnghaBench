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
typedef  int /*<<< orphan*/ * sds ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 

__attribute__((used)) static sds FUNC5(char *envoverride, char *dotfilename) {
    char *path = NULL;
    sds dotPath = NULL;

    /* Check the env for a dotfile override. */
    path = FUNC0(envoverride);
    if (path != NULL && *path != '\0') {
        if (!FUNC4("/dev/null", path)) {
            return NULL;
        }

        /* If the env is set, return it. */
        dotPath = FUNC3(path);
    } else {
        char *home = FUNC0("HOME");
        if (home != NULL && *home != '\0') {
            /* If no override is set use $HOME/<dotfilename>. */
            dotPath = FUNC1(FUNC2(), "%s/%s", home, dotfilename);
        }
    }
    return dotPath;
}