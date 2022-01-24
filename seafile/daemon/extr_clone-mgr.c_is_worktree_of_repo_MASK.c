#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* gpointer ;
typedef  int /*<<< orphan*/  gboolean ;
struct TYPE_16__ {int /*<<< orphan*/  repo_mgr; } ;
struct TYPE_15__ {TYPE_2__* data; struct TYPE_15__* next; } ;
struct TYPE_14__ {int /*<<< orphan*/  tasks; } ;
struct TYPE_13__ {int /*<<< orphan*/  worktree; } ;
struct TYPE_12__ {scalar_t__ state; int /*<<< orphan*/  worktree; } ;
typedef  TYPE_2__ SeafRepo ;
typedef  TYPE_3__ SeafCloneManager ;
typedef  TYPE_4__ GList ;
typedef  int /*<<< orphan*/  GHashTableIter ;
typedef  TYPE_1__ CloneTask ;

/* Variables and functions */
 scalar_t__ CLONE_STATE_CANCELED ; 
 scalar_t__ CLONE_STATE_DONE ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,TYPE_1__**,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 scalar_t__ FUNC3 (char const*,int /*<<< orphan*/ ) ; 
 TYPE_7__* seaf ; 
 TYPE_4__* FUNC4 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static gboolean
FUNC5 (SeafCloneManager *mgr, const char *path)
{
    GList *repos, *ptr;
    SeafRepo *repo;
    GHashTableIter iter;
    gpointer key, value;
    CloneTask *task;

    repos = FUNC4 (seaf->repo_mgr, -1, -1);
    for (ptr = repos; ptr != NULL; ptr = ptr->next) {
        repo = ptr->data;
        if (FUNC3 (path, repo->worktree) == 0) {
            FUNC2 (repos);
            return TRUE;
        }
    }
    FUNC2 (repos);

    FUNC0 (&iter, mgr->tasks);
    while (FUNC1 (&iter, &key, &value)) {
        task = value;
        if (task->state == CLONE_STATE_DONE ||
            task->state == CLONE_STATE_CANCELED)
            continue;
        if (FUNC3 (path, task->worktree) == 0)
            return TRUE;
    }

    return FALSE;
}