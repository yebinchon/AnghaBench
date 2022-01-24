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
struct TYPE_2__ {int /*<<< orphan*/  sync_mgr; } ;
typedef  int /*<<< orphan*/  GError ;

/* Variables and functions */
 int /*<<< orphan*/  SEAFILE_DOMAIN ; 
 int /*<<< orphan*/  SEAF_ERR_BAD_ARGS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 char* FUNC2 (char const*) ; 
 TYPE_1__* seaf ; 
 char* FUNC3 (int /*<<< orphan*/ ,char const*,char*,int) ; 
 scalar_t__ FUNC4 (char const*,char*) ; 
 int FUNC5 (char*) ; 

char *
FUNC6 (const char *repo_id,
                              const char *path,
                              int is_dir,
                              GError **error)
{
    char *canon_path = NULL;
    int len;
    char *status;

    if (!repo_id || !path) {
        FUNC1 (error, SEAFILE_DOMAIN, SEAF_ERR_BAD_ARGS, "Argument should not be null");
        return NULL;
    }

    /* Empty path means to get status of the worktree folder. */
    if (FUNC4 (path, "") != 0) {
        if (*path == '/')
            ++path;
        canon_path = FUNC2(path);
        len = FUNC5(canon_path);
        if (canon_path[len-1] == '/')
            canon_path[len-1] = 0;
    } else {
        canon_path = FUNC2(path);
    }

    status = FUNC3 (seaf->sync_mgr,
                                                     repo_id,
                                                     canon_path,
                                                     is_dir);
    FUNC0 (canon_path);
    return status;
}