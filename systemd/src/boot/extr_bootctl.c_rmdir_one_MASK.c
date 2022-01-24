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
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  ENOTEMPTY ; 
 int FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 char* FUNC3 (char const*,char const*) ; 
 scalar_t__ FUNC4 (char const*) ; 

__attribute__((used)) static int FUNC5(const char *prefix, const char *suffix) {
        const char *p;

        p = FUNC3(prefix, suffix);
        if (FUNC4(p) < 0) {
                bool ignore = FUNC0(errno, ENOENT, ENOTEMPTY);

                FUNC1(ignore ? LOG_DEBUG : LOG_ERR, errno,
                               "Failed to remove directory \"%s\": %m", p);
                if (!ignore)
                        return -errno;
        } else
                FUNC2("Removed \"%s\".", p);

        return 0;
}