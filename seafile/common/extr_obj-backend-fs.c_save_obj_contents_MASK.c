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
typedef  scalar_t__ gboolean ;

/* Variables and functions */
 int SEAF_PATH_MAX ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char*,char const*) ; 
 scalar_t__ FUNC4 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int,void const*,int) ; 

__attribute__((used)) static int
FUNC9 (const char *path, const void *data, int len, gboolean need_sync)
{
    char tmp_path[SEAF_PATH_MAX];
    int fd;

    FUNC6 (tmp_path, SEAF_PATH_MAX, "%s.XXXXXX", path);
    fd = FUNC2 (tmp_path);
    if (fd < 0) {
        FUNC5 ("[obj backend] Failed to open tmp file %s: %s.\n",
                      tmp_path, FUNC7(errno));
        return -1;
    }

    if (FUNC8 (fd, data, len) < 0) {
        FUNC5 ("[obj backend] Failed to write obj %s: %s.\n",
                      tmp_path, FUNC7(errno));
        return -1;
    }

    if (need_sync && FUNC1 (fd) < 0)
        return -1;

    /* Close may return error, especially in NFS. */
    if (FUNC0 (fd) < 0) {
        FUNC5 ("[obj backend Failed close obj %s: %s.\n",
                      tmp_path, FUNC7(errno));
        return -1;
    }

    if (need_sync) {
        if (FUNC4 (tmp_path, path) < 0)
            return -1;
    } else {
        if (FUNC3 (tmp_path, path) < 0) {
            FUNC5 ("[obj backend] Failed to rename %s: %s.\n",
                          path, FUNC7(errno));
            return -1;
        }
    }

    return 0;
}