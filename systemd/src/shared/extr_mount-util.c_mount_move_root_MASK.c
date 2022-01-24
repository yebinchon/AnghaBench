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
 int /*<<< orphan*/  MS_MOVE ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char*) ; 
 int errno ; 
 scalar_t__ FUNC3 (char const*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC4(const char *path) {
        FUNC0(path);

        if (FUNC1(path) < 0)
                return -errno;

        if (FUNC3(path, "/", NULL, MS_MOVE, NULL) < 0)
                return -errno;

        if (FUNC2(".") < 0)
                return -errno;

        if (FUNC1("/") < 0)
                return -errno;

        return 0;
}