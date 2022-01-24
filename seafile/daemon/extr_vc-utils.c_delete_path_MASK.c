#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ gint64 ;
struct TYPE_3__ {scalar_t__ st_mtime; int /*<<< orphan*/  st_mode; } ;
typedef  TYPE_1__ SeafStat ;

/* Variables and functions */
 int SEAF_PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char*,TYPE_1__*) ; 
 scalar_t__ FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (char const*) ; 

int
FUNC10 (const char *worktree, const char *name,
             unsigned int mode, gint64 old_mtime)
{
    char path[SEAF_PATH_MAX];
    SeafStat st;
    int len = FUNC9(name);

    if (!len) {
        FUNC6 ("entry name should not be empty.\n");
        return -1;
    }

    FUNC7 (path, SEAF_PATH_MAX, "%s/%s", worktree, name);

    if (!FUNC0(mode)) {
        /* file doesn't exist in work tree */
        if (FUNC4 (path, &st) < 0 || !FUNC1(st.st_mode)) {
            return 0;
        }

        /* file has been changed. */
        if (!FUNC2 (name) && (old_mtime != st.st_mtime)) {
            FUNC6 ("File %s is changed. Skip removing the file.\n", path);
            return -1;
        }

        /* first unlink the file. */
        if (FUNC5 (path) < 0) {
            FUNC6 ("Failed to remove %s: %s.\n", path, FUNC8(errno));
            return -1;
        }
    } else {
        if (FUNC3 (path) < 0) {
            FUNC6 ("Failed to remove dir %s: %s.\n", path, FUNC8(errno));
            return -1;
        }
    }

    /* then remove all empty directories upwards. */
    /* offset = base_len + len; */
    /* do { */
    /*     if (path[offset] == '/') { */
    /*         path[offset] = '\0'; */
    /*         int ret = seaf_remove_empty_dir (path); */
    /*         if (ret < 0) { */
    /*             break; */
    /*         } */
    /*     } */
    /* } while (--offset > base_len); */

    return 0;
}