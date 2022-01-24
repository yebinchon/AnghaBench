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
 scalar_t__ EACCES ; 
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  X_OK ; 
 scalar_t__ FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 scalar_t__ errno ; 
 int FUNC2 (scalar_t__,char*,char const*) ; 
 int FUNC3 (scalar_t__,char*,char const*) ; 
 int FUNC4 (scalar_t__,char*,char const*) ; 

__attribute__((used)) static int FUNC5(const char *path) {
        FUNC1(path);

        if (FUNC0(path, X_OK) < 0) {
                if (errno == ENOENT)
                        return FUNC2(errno, "%s does not exist, skipping.", path);
                if (errno == EACCES)
                        return FUNC3(errno, "%s is not marked executable, skipping.", path);

                return FUNC4(errno, "Couldn't determine if %s exists and is executable, skipping: %m", path);
        }

        return 0;
}