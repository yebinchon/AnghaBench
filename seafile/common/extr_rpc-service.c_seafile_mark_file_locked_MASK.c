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
struct TYPE_2__ {int /*<<< orphan*/  filelock_mgr; } ;
typedef  int /*<<< orphan*/  GError ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  SEAFILE_DOMAIN ; 
 int /*<<< orphan*/  SEAF_ERR_BAD_ARGS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 char* FUNC2 (char const*) ; 
 TYPE_1__* seaf ; 
 int FUNC3 (int /*<<< orphan*/ ,char const*,char const*,int /*<<< orphan*/ ) ; 
 int FUNC4 (char*) ; 

int
FUNC5 (const char *repo_id, const char *path, GError **error)
{
    char *canon_path = NULL;
    int len;
    int ret;

    if (!repo_id || !path) {
        FUNC1 (error, SEAFILE_DOMAIN, SEAF_ERR_BAD_ARGS, "Argument should not be null");
        return -1;
    }

    if (*path == '/')
        ++path;

    if (path[0] == 0) {
        FUNC1 (error, SEAFILE_DOMAIN, SEAF_ERR_BAD_ARGS, "Invalid path");
        return -1;
    }

    canon_path = FUNC2(path);
    len = FUNC4(canon_path);
    if (canon_path[len-1] == '/')
        canon_path[len-1] = 0;

    ret = FUNC3 (seaf->filelock_mgr,
                                                  repo_id, path, FALSE);

    FUNC0 (canon_path);
    return ret;
}