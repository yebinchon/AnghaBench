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
typedef  size_t LogRealm ;

/* Variables and functions */
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 size_t FUNC2 (int) ; 
 int /*<<< orphan*/  PROTECT_ERRNO ; 
 scalar_t__ FUNC3 (int) ; 
 int FUNC4 (int,int,char const*,int,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 scalar_t__* log_max_level ; 

int FUNC5(
                int level,
                int error,
                const char *file,
                int line,
                const char *func,
                char *buffer) {

        LogRealm realm = FUNC2(level);
        PROTECT_ERRNO;

        /* This modifies the buffer... */

        if (FUNC3(FUNC1(level) > log_max_level[realm]))
                return -FUNC0(error);

        return FUNC4(level, error, file, line, func, NULL, NULL, NULL, NULL, buffer);
}