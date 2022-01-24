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
 int /*<<< orphan*/  REPLACE_ENV_USE_ENVIRONMENT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char**,char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(void) {
        const char *_env[] = {
                "FOO=NO NO NO",
                "FOO=BAR BAR",
                "BAR=waldo",
                "PATH=unset",
                NULL
        };
        char **env = (char**) _env;

        FUNC0(FUNC2(FUNC4(env, "FOO__", 3, 0), "BAR BAR"));
        FUNC0(FUNC2(FUNC4(env, "FOO__", 3, REPLACE_ENV_USE_ENVIRONMENT), "BAR BAR"));
        FUNC0(FUNC2(FUNC4(env, "FOO", 3, 0), "BAR BAR"));
        FUNC0(FUNC2(FUNC4(env, "FOO", 3, REPLACE_ENV_USE_ENVIRONMENT), "BAR BAR"));

        FUNC0(FUNC2(FUNC4(env, "PATH__", 4, 0), "unset"));
        FUNC0(FUNC2(FUNC4(env, "PATH", 4, 0), "unset"));
        FUNC0(FUNC2(FUNC4(env, "PATH__", 4, REPLACE_ENV_USE_ENVIRONMENT), "unset"));
        FUNC0(FUNC2(FUNC4(env, "PATH", 4, REPLACE_ENV_USE_ENVIRONMENT), "unset"));

        env[3] = NULL; /* kill our $PATH */

        FUNC0(!FUNC4(env, "PATH__", 4, 0));
        FUNC0(!FUNC4(env, "PATH", 4, 0));
        FUNC0(FUNC3(FUNC4(env, "PATH__", 4, REPLACE_ENV_USE_ENVIRONMENT),
                            FUNC1("PATH")));
        FUNC0(FUNC3(FUNC4(env, "PATH", 4, REPLACE_ENV_USE_ENVIRONMENT),
                            FUNC1("PATH")));
}