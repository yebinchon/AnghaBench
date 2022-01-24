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
struct stat {int /*<<< orphan*/  st_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int errno ; 
 scalar_t__ FUNC2 (char const*,struct stat*) ; 

int FUNC3(const char *path) {
        struct stat info;

        FUNC1(path);

        if (FUNC2(path, &info) < 0)
                return -errno;

        return !!FUNC0(info.st_mode);
}