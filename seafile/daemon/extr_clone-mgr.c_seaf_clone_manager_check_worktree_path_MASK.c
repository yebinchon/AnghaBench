#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* gpointer ;
typedef  int /*<<< orphan*/  gboolean ;
struct TYPE_16__ {int /*<<< orphan*/  repo_mgr; int /*<<< orphan*/ * ccnet_dir; int /*<<< orphan*/ * worktree_dir; int /*<<< orphan*/ * seaf_dir; } ;
struct TYPE_15__ {TYPE_2__* data; struct TYPE_15__* next; } ;
struct TYPE_14__ {int /*<<< orphan*/  tasks; } ;
struct TYPE_13__ {int /*<<< orphan*/  name; int /*<<< orphan*/ * worktree; } ;
struct TYPE_12__ {scalar_t__ state; int /*<<< orphan*/  repo_id; int /*<<< orphan*/ * worktree; } ;
typedef  TYPE_2__ SeafRepo ;
typedef  TYPE_3__ SeafCloneManager ;
typedef  TYPE_4__ GList ;
typedef  int /*<<< orphan*/  GHashTableIter ;
typedef  int /*<<< orphan*/  GError ;
typedef  TYPE_1__ CloneTask ;

/* Variables and functions */
 scalar_t__ CLONE_STATE_CANCELED ; 
 scalar_t__ CLONE_STATE_DONE ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  SEAFILE_DOMAIN ; 
 int /*<<< orphan*/  SEAF_ERR_GENERAL ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC0 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,TYPE_1__**,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 TYPE_8__* seaf ; 
 TYPE_4__* FUNC5 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 

gboolean
FUNC7 (SeafCloneManager *mgr, const char *path, GError **error)
{
    GList *repos, *ptr;
    SeafRepo *repo;
    GHashTableIter iter;
    gpointer key, value;
    CloneTask *task;

    if (FUNC0 (path, seaf->seaf_dir) != 0 ||
        /* It's OK if path is included by the default worktree parent. */
        FUNC0 (path, seaf->worktree_dir) < 0 ||
        FUNC0 (path, seaf->ccnet_dir) != 0) {
        FUNC6 ("Worktree path conflicts with seafile system path.\n");
        FUNC4 (error, SEAFILE_DOMAIN, SEAF_ERR_GENERAL,
                     "Worktree conflicts system path");
        return FALSE;
    }

    repos = FUNC5 (seaf->repo_mgr, -1, -1);
    for (ptr = repos; ptr != NULL; ptr = ptr->next) {
        repo = ptr->data;
        if (repo->worktree != NULL &&
            FUNC0 (path, repo->worktree) != 0) {
            FUNC6 ("Worktree path conflict with repo %s.\n", repo->name);
            FUNC4 (error, SEAFILE_DOMAIN, SEAF_ERR_GENERAL,
                         "Worktree conflicts existing repo");
            FUNC3 (repos);
            return FALSE;
        }
    }
    FUNC3 (repos);

    FUNC1 (&iter, mgr->tasks);
    while (FUNC2 (&iter, &key, &value)) {
        task = value;
        if (task->state == CLONE_STATE_DONE ||
            task->state == CLONE_STATE_CANCELED)
            continue;
        if (FUNC0 (path, task->worktree) != 0) {
            FUNC6 ("Worktree path conflict with clone %.8s.\n",
                          task->repo_id);
            FUNC4 (error, SEAFILE_DOMAIN, SEAF_ERR_GENERAL,
                         "Worktree conflicts existing repo");
            return FALSE;
        }
    }

    return TRUE;
}