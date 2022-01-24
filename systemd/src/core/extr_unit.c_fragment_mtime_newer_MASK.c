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
typedef  scalar_t__ usec_t ;
struct stat {int /*<<< orphan*/  st_mtim; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct stat*) ; 
 scalar_t__ FUNC2 (char const*,struct stat*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC4(const char *path, usec_t mtime, bool path_masked) {
        struct stat st;

        if (!path)
                return false;

        /* If the source is some virtual kernel file system, then we assume we watch it anyway, and hence pretend we
         * are never out-of-date. */
        if (FUNC0(path, "/proc", "/sys"))
                return false;

        if (FUNC2(path, &st) < 0)
                /* What, cannot access this anymore? */
                return true;

        if (path_masked)
                /* For masked files check if they are still so */
                return !FUNC1(&st);
        else
                /* For non-empty files check the mtime */
                return FUNC3(&st.st_mtim) > mtime;

        return false;
}