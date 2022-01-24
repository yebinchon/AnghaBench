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
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  F_OK ; 
 char* SYSTEMD_CATALOG_DIR ; 
 scalar_t__ FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*) ; 
 char* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  stderr ; 

const char* FUNC5(void) {
        const char *env;

        FUNC4();

        /* if the env var is set, use that */
        env = FUNC3("SYSTEMD_CATALOG_DIR");
        if (!env)
                env = SYSTEMD_CATALOG_DIR;
        if (FUNC0(env, F_OK) < 0) {
                FUNC2(stderr, "ERROR: $SYSTEMD_CATALOG_DIR directory [%s] does not exist\n", env);
                FUNC1(EXIT_FAILURE);
        }
        return env;
}