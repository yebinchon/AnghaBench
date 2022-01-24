#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_9__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/  repo_mgr; } ;
struct TYPE_14__ {scalar_t__ server_url; int /*<<< orphan*/  peer_port; int /*<<< orphan*/  peer_addr; int /*<<< orphan*/  email; int /*<<< orphan*/  token; int /*<<< orphan*/  repo_id; int /*<<< orphan*/  worktree; } ;
struct TYPE_13__ {int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ SeafRepo ;
typedef  int /*<<< orphan*/  GError ;
typedef  TYPE_2__ CloneTask ;

/* Variables and functions */
 int /*<<< orphan*/  CLONE_STATE_FETCH ; 
 int /*<<< orphan*/  F_OK ; 
 int /*<<< orphan*/  REPO_PROP_SERVER_URL ; 
 int /*<<< orphan*/  SYNC_ERROR_ID_NOT_ENOUGH_MEMORY ; 
 int /*<<< orphan*/  SYNC_ERROR_ID_WRITE_LOCAL_DATA ; 
 scalar_t__ FUNC0 (TYPE_2__*,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_2__*) ; 
 TYPE_9__* seaf ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC12 (CloneTask *task)
{
    GError *error = NULL;

    if (FUNC1 (task->worktree, F_OK) != 0 &&
        FUNC2 (task->worktree, 0777) < 0) {
        FUNC9 ("[clone mgr] Failed to create worktree %s.\n",
                      task->worktree);
        FUNC11 (task, SYNC_ERROR_ID_WRITE_LOCAL_DATA);
        return;
    }

    SeafRepo *repo = FUNC4 (seaf->repo_mgr, task->repo_id);
    if (repo != NULL) {
        FUNC8 (seaf->repo_mgr, repo, task->token);
        FUNC5 (seaf->repo_mgr, repo, task->email);
        FUNC7 (seaf->repo_mgr, repo->id,
                                               task->peer_addr, task->peer_port);
        if (task->server_url) {
            FUNC6 (seaf->repo_mgr,
                                                 repo->id,
                                                 REPO_PROP_SERVER_URL,
                                                 task->server_url);
        }

        FUNC3 (repo, task);
        return;
    }

    if (FUNC0 (task, &error) == 0)
        FUNC10 (task, CLONE_STATE_FETCH);
    else
        FUNC11 (task, SYNC_ERROR_ID_NOT_ENOUGH_MEMORY);
}