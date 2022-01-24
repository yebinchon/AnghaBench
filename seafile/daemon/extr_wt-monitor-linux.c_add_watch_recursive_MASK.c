#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct dirent {char const* d_name; scalar_t__ d_type; } ;
typedef  scalar_t__ gboolean ;
struct TYPE_6__ {int /*<<< orphan*/  status; int /*<<< orphan*/  mapping; } ;
struct TYPE_5__ {int /*<<< orphan*/  st_mode; } ;
typedef  TYPE_1__ SeafStat ;
typedef  TYPE_2__ RepoWatchInfo ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 scalar_t__ DT_DIR ; 
 scalar_t__ DT_LNK ; 
 scalar_t__ DT_REG ; 
 scalar_t__ DT_UNKNOWN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ WATCH_MASK ; 
 int /*<<< orphan*/  WT_EVENT_CREATE_OR_UPDATE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  errno ; 
 char* FUNC4 (char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (char*) ; 
 struct dirent* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (char*,TYPE_1__*) ; 
 scalar_t__ FUNC12 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC14 (RepoWatchInfo *info,
                     int in_fd,
                     const char *worktree,
                     const char *path,
                     gboolean add_events)
{
    char *full_path;
    SeafStat st;
    DIR *dir;
    struct dirent *dent;
    int wd;

    full_path = FUNC4 (worktree, path, NULL);

    if (FUNC11 (full_path, &st) < 0) {
        FUNC10 ("[wt mon] fail to stat %s: %s\n", full_path, FUNC13(errno));
        goto out;
    }

    if (add_events && path[0] != 0)
        FUNC1 (info->status, WT_EVENT_CREATE_OR_UPDATE,
                            path, NULL);

    if (FUNC0 (st.st_mode)) {
        FUNC9 ("Watching %s.\n", full_path);

        wd = FUNC6 (in_fd, full_path, (uint32_t)WATCH_MASK);
        if (wd < 0) {
            FUNC10 ("[wt mon] fail to add watch to %s: %s.\n",
                          full_path, FUNC13(errno));
            goto out;
        }

        FUNC2 (info->mapping, path, wd);

        dir = FUNC7 (full_path);
        if (!dir) {
            FUNC10 ("[wt mon] fail to open dir %s: %s.\n",
                          full_path, FUNC13(errno));
            goto out;
        }

        while (1) {
            dent = FUNC8 (dir);
            if (!dent)
                break;
            if (FUNC12 (dent->d_name, ".") == 0 ||
                FUNC12 (dent->d_name, "..") == 0)
                continue;

            char *sub_path = FUNC4 (path, dent->d_name, NULL);

            /* Check d_type to avoid stating every files under this dir.
             * Note that d_type may not be supported in some file systems,
             * in this case DT_UNKNOWN is returned.
             */
            if (dent->d_type == DT_DIR || dent->d_type == DT_LNK ||
                dent->d_type == DT_UNKNOWN)
                FUNC14 (info, in_fd, worktree, sub_path, add_events);

            if (dent->d_type == DT_REG && add_events)
                FUNC1 (info->status, WT_EVENT_CREATE_OR_UPDATE,
                                    sub_path, NULL);
            FUNC5 (sub_path);
        }

        FUNC3 (dir);
    }

out:
    FUNC5 (full_path);
    return 0;
}