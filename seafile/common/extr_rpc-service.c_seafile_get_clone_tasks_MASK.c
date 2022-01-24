#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  clone_mgr; } ;
struct TYPE_10__ {int /*<<< orphan*/  worktree; int /*<<< orphan*/  repo_name; int /*<<< orphan*/  repo_id; int /*<<< orphan*/  error; int /*<<< orphan*/  state; } ;
struct TYPE_9__ {TYPE_2__* data; struct TYPE_9__* next; } ;
typedef  int /*<<< orphan*/  SeafileCloneTask ;
typedef  TYPE_1__ GList ;
typedef  int /*<<< orphan*/  GError ;
typedef  TYPE_2__ CloneTask ;

/* Variables and functions */
 int /*<<< orphan*/  SEAFILE_TYPE_CLONE_TASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_5__* seaf ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ) ; 

GList *
FUNC5 (GError **error)
{
    GList *tasks, *ptr;
    GList *ret = NULL;
    CloneTask *task;
    SeafileCloneTask *t;

    tasks = FUNC4 (seaf->clone_mgr);
    for (ptr = tasks; ptr != NULL; ptr = ptr->next) {
        task = ptr->data;
        t = FUNC3 (SEAFILE_TYPE_CLONE_TASK,
                          "state", FUNC0(task->state),
                          "error", task->error,
                          "repo_id", task->repo_id,
                          "repo_name", task->repo_name,
                          "worktree", task->worktree,
                          NULL);
        ret = FUNC2 (ret, t);
    }

    FUNC1 (tasks);
    return ret;
}