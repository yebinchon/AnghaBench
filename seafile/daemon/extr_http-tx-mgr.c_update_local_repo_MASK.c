#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_13__ ;

/* Type definitions */
struct TYPE_17__ {void* error; int /*<<< orphan*/  repo_id; int /*<<< orphan*/  head; scalar_t__ is_clone; int /*<<< orphan*/  repo_version; } ;
struct TYPE_16__ {int /*<<< orphan*/  repo_name; int /*<<< orphan*/  commit_id; int /*<<< orphan*/  repo_id; } ;
struct TYPE_15__ {int /*<<< orphan*/  name; int /*<<< orphan*/ * head; } ;
struct TYPE_14__ {int /*<<< orphan*/  branch_mgr; int /*<<< orphan*/  repo_mgr; int /*<<< orphan*/  commit_mgr; } ;
typedef  TYPE_1__ SeafRepo ;
typedef  TYPE_2__ SeafCommit ;
typedef  int /*<<< orphan*/  SeafBranch ;
typedef  TYPE_3__ HttpTxTask ;

/* Variables and functions */
 void* SYNC_ERROR_ID_LOCAL_DATA_CORRUPT ; 
 void* SYNC_ERROR_ID_NOT_ENOUGH_MEMORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_13__* seaf ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 TYPE_1__* FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static int
FUNC15 (HttpTxTask *task)
{
    SeafRepo *repo;
    SeafCommit *new_head;
    SeafBranch *branch;
    int ret = 0;

    new_head = FUNC7 (seaf->commit_mgr,
                                               task->repo_id,
                                               task->repo_version,
                                               task->head);
    if (!new_head) {
        FUNC14 ("Failed to get commit %s:%s.\n", task->repo_id, task->head);
        task->error = SYNC_ERROR_ID_LOCAL_DATA_CORRUPT;
        return -1;
    }

    /* If repo doesn't exist, create it.
     * Note that branch doesn't exist either in this case.
     */
    repo = FUNC11 (seaf->repo_mgr, new_head->repo_id);
    if (task->is_clone) {
        if (repo != NULL)
            goto out;

        repo = FUNC12 (new_head->repo_id, NULL, NULL);
        if (repo == NULL) {
            /* create repo failed */
            task->error = SYNC_ERROR_ID_NOT_ENOUGH_MEMORY;
            ret = -1;
            goto out;
        }

        FUNC9 (repo, new_head);

        FUNC10 (seaf->repo_mgr, repo);

        /* If it's a new repo, create 'local' and 'master' branch */
        branch = FUNC4 ("local", task->repo_id, task->head);
        FUNC1 (seaf->branch_mgr, branch);
        FUNC6 (branch);

        branch = FUNC4 ("master", task->repo_id, task->head);
        FUNC1 (seaf->branch_mgr, branch);
        FUNC6 (branch);
    } else {
        if (!repo) {
            task->error = SYNC_ERROR_ID_LOCAL_DATA_CORRUPT;
            ret = -1;
            goto out;
        }

        branch = FUNC2 (seaf->branch_mgr, 
                                                 task->repo_id,
                                                 "master");
        if (!branch) {
            FUNC14 ("Branch master not found for repo %.8s.\n", task->repo_id);
            task->error = SYNC_ERROR_ID_LOCAL_DATA_CORRUPT;
            ret = -1;
            goto out;
        }
        FUNC5 (branch, new_head->commit_id);
        FUNC3 (seaf->branch_mgr, branch);
        FUNC6 (branch);

        /* Update repo head branch. */
        FUNC5 (repo->head, new_head->commit_id);
        FUNC3 (seaf->branch_mgr, repo->head);

        if (FUNC0 (repo->name, new_head->repo_name) != 0)
            FUNC13 (repo, new_head->repo_name);
    }

out:
    FUNC8 (new_head);
    return ret;
}