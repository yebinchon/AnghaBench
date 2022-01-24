#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  worktree_dir; } ;

/* Variables and functions */
 int /*<<< orphan*/  G_FILE_TEST_EXISTS ; 
 int /*<<< orphan*/  SEAFILE_RECYCLE_BIN_FOLDER ; 
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  errno ; 
 char* FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (char const*) ; 
 char* FUNC5 (char*,char*,int) ; 
 TYPE_1__* seaf ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,char*) ; 
 scalar_t__ FUNC7 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10 (const char *dir_path)
{
    char *trash_folder = FUNC1 ("/", seaf->worktree_dir, SEAFILE_RECYCLE_BIN_FOLDER, NULL);
    if (FUNC0 (trash_folder) < 0) {
        FUNC8 ("Seafile trash folder %s doesn't exist and cannot be created.\n",
                      trash_folder);
        FUNC3 (trash_folder);
        return -1;
    }
    FUNC3 (trash_folder);

    char *basename = FUNC4 (dir_path);
    char *dst_path = FUNC1 ("/", seaf->worktree_dir, SEAFILE_RECYCLE_BIN_FOLDER, basename, NULL);
    int ret = 0;

    int n;
    char *tmp_path;
    for (n = 1; n < 10; ++n) {
        if (FUNC2 (dst_path, G_FILE_TEST_EXISTS)) {
            tmp_path = FUNC5 ("%s(%d)", dst_path, n);
            FUNC3 (dst_path);
            dst_path = tmp_path;
            continue;
        }
        break;
    }

    if (FUNC7 (dir_path, dst_path) < 0) {
        FUNC8 ("Failed to move %s to Seafile recycle bin %s: %s\n",
                      dir_path, dst_path, FUNC9(errno));
        ret = -1;
        goto out;
    }

    FUNC6 ("Moved folder %s to Seafile recyle bin %s.\n",
                  dir_path, dst_path);

out:
    FUNC3 (basename);
    FUNC3 (dst_path);
    return ret;
}