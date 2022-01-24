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
 int /*<<< orphan*/  FUNC0 (char**) ; 
 scalar_t__ FUNC1 (char const*) ; 
 char* FUNC2 (char*,char const*,...) ; 
 char* FUNC3 (char*) ; 

__attribute__((used)) static int FUNC4(const char *path, const char *suffix, char **fs) {
        char *t;

        FUNC0(fs);

        if (FUNC1(path) && FUNC1(suffix))
                t = FUNC3("/sys/fs/cgroup");
        else if (FUNC1(path))
                t = FUNC2("/sys/fs/cgroup", suffix);
        else if (FUNC1(suffix))
                t = FUNC2("/sys/fs/cgroup", path);
        else
                t = FUNC2("/sys/fs/cgroup", path, suffix);
        if (!t)
                return -ENOMEM;

        *fs = t;
        return 0;
}