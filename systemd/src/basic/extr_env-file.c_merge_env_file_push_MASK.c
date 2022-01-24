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
 int ENOMEM ; 
 int REPLACE_ENV_ALLOW_BRACELESS ; 
 int REPLACE_ENV_ALLOW_EXTENDED ; 
 int REPLACE_ENV_USE_ENVIRONMENT ; 
 int /*<<< orphan*/  FUNC0 (char***) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int FUNC4 (char const*,unsigned int,char const*,char*,char***,int*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,unsigned int,char const*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,unsigned int,char const*) ; 
 char* FUNC7 (char*,char**,int) ; 
 int /*<<< orphan*/  FUNC8 (char const*) ; 

__attribute__((used)) static int FUNC9(
                const char *filename, unsigned line,
                const char *key, char *value,
                void *userdata,
                int *n_pushed) {

        char ***env = userdata;
        char *expanded_value;

        FUNC0(env);

        if (!value) {
                FUNC6("%s:%u: invalid syntax (around \"%s\"), ignoring.", FUNC8(filename), line, key);
                return 0;
        }

        if (!FUNC1(key)) {
                FUNC6("%s:%u: invalid variable name \"%s\", ignoring.", FUNC8(filename), line, key);
                FUNC2(value);
                return 0;
        }

        expanded_value = FUNC7(value, *env,
                                     REPLACE_ENV_USE_ENVIRONMENT|
                                     REPLACE_ENV_ALLOW_BRACELESS|
                                     REPLACE_ENV_ALLOW_EXTENDED);
        if (!expanded_value)
                return -ENOMEM;

        FUNC3(value, expanded_value);

        FUNC5("%s:%u: setting %s=%s", filename, line, key, value);

        return FUNC4(filename, line, key, value, env, n_pushed);
}