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
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,char const* const) ; 
 int /*<<< orphan*/  ENV_CLEVEL ; 
 int ZSTDCLI_CLEVEL_DEFAULT ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char const**,unsigned int*) ; 

__attribute__((used)) static int FUNC3(void) {
    const char* const env = FUNC1(ENV_CLEVEL);
    if (env) {
        const char *ptr = env;
        int sign = 1;
        if (*ptr == '-') {
            sign = -1;
            ptr++;
        } else if (*ptr == '+') {
            ptr++;
        }

        if ((*ptr>='0') && (*ptr<='9')) {
            unsigned absLevel;
            if (FUNC2(&ptr, &absLevel)) {
                FUNC0(2, "Ignore environment variable setting %s=%s: numeric value too large\n", ENV_CLEVEL, env);
                return ZSTDCLI_CLEVEL_DEFAULT;
            } else if (*ptr == 0) {
                return sign * (int)absLevel;
            }
        }

        FUNC0(2, "Ignore environment variable setting %s=%s: not a valid integer value\n", ENV_CLEVEL, env);
    }

    return ZSTDCLI_CLEVEL_DEFAULT;
}