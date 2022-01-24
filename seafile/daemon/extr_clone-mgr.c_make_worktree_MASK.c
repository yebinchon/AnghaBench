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
typedef  int /*<<< orphan*/  gboolean ;
struct TYPE_3__ {int /*<<< orphan*/  st_mode; } ;
typedef  TYPE_1__ SeafStat ;
typedef  int /*<<< orphan*/  SeafCloneManager ;
typedef  int /*<<< orphan*/  GError ;

/* Variables and functions */
 int /*<<< orphan*/  SEAFILE_DOMAIN ; 
 int /*<<< orphan*/  SEAF_ERR_GENERAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 char* FUNC3 (char const*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (char*,TYPE_1__*) ; 
 char* FUNC7 (char*) ; 

__attribute__((used)) static char *
FUNC8 (SeafCloneManager *mgr,
               const char *worktree,
               gboolean dry_run,
               GError **error)
{
    char *wt = FUNC3 (worktree);
    SeafStat st;
    int rc;
    char *ret;

    FUNC5 (wt);

    rc = FUNC6 (wt, &st);
    if (rc < 0) {
        ret = wt;
        return ret;
    } else if (!FUNC0(st.st_mode)) {
        if (!dry_run) {
            FUNC2 (error, SEAFILE_DOMAIN, SEAF_ERR_GENERAL,
                         "Invalid local directory");
            FUNC1 (wt);
            return NULL;
        }
        ret = FUNC7 (wt);
        FUNC1 (wt);
        return ret;
    }

    /* OK, wt is an existing dir. Let's see if it's the worktree for
     * another repo. */
    if (FUNC4 (mgr, wt)) {
        if (!dry_run) {
            FUNC2 (error, SEAFILE_DOMAIN, SEAF_ERR_GENERAL,
                         "Already in sync");
            FUNC1 (wt);
            return NULL;
        }
        ret = FUNC7 (wt);
        FUNC1 (wt);
    } else {
        return wt;
    }

    return ret;
}