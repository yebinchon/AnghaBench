#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  opts ;
typedef  int /*<<< orphan*/  gint64 ;
typedef  int /*<<< orphan*/  data ;
struct TYPE_18__ {int /*<<< orphan*/  delta; struct TYPE_18__* data; int /*<<< orphan*/  dir_cb; int /*<<< orphan*/  file_cb; int /*<<< orphan*/  version; int /*<<< orphan*/  store_id; int /*<<< orphan*/ * active_paths; TYPE_3__* task; } ;
struct TYPE_17__ {int /*<<< orphan*/  repo_id; int /*<<< orphan*/  repo_version; } ;
struct TYPE_16__ {int /*<<< orphan*/  commit_id; } ;
struct TYPE_15__ {char* root_id; } ;
struct TYPE_14__ {int /*<<< orphan*/  commit_mgr; int /*<<< orphan*/  branch_mgr; } ;
typedef  TYPE_1__ SeafCommit ;
typedef  TYPE_2__ SeafBranch ;
typedef  TYPE_3__ HttpTxTask ;
typedef  int /*<<< orphan*/  GHashTable ;
typedef  TYPE_4__ DiffOptions ;
typedef  TYPE_4__ CalcQuotaDeltaData ;

/* Variables and functions */
 int /*<<< orphan*/  check_quota_and_active_paths_diff_dirs ; 
 int /*<<< orphan*/  check_quota_and_active_paths_diff_files ; 
 scalar_t__ FUNC0 (int,char const**,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 TYPE_10__* seaf ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8 (HttpTxTask *task,
                                              gint64 *delta,
                                              GHashTable *active_paths)
{
    int ret = 0;
    SeafBranch *local = NULL, *master = NULL;
    SeafCommit *local_head = NULL, *master_head = NULL;

    local = FUNC3 (seaf->branch_mgr, task->repo_id, "local");
    if (!local) {
        FUNC7 ("Branch local not found for repo %.8s.\n", task->repo_id);
        ret = -1;
        goto out;
    }
    master = FUNC3 (seaf->branch_mgr, task->repo_id, "master");
    if (!master) {
        FUNC7 ("Branch master not found for repo %.8s.\n", task->repo_id);
        ret = -1;
        goto out;
    }

    local_head = FUNC5 (seaf->commit_mgr,
                                                 task->repo_id, task->repo_version,
                                                 local->commit_id);
    if (!local_head) {
        FUNC7 ("Local head commit not found for repo %.8s.\n",
                      task->repo_id);
        ret = -1;
        goto out;
    }
    master_head = FUNC5 (seaf->commit_mgr,
                                                 task->repo_id, task->repo_version,
                                                 master->commit_id);
    if (!master_head) {
        FUNC7 ("Master head commit not found for repo %.8s.\n",
                      task->repo_id);
        ret = -1;
        goto out;
    }

    CalcQuotaDeltaData data;
    FUNC2 (&data, 0, sizeof(data));
    data.task = task;
    data.active_paths = active_paths;

    DiffOptions opts;
    FUNC2 (&opts, 0, sizeof(opts));
    FUNC1 (opts.store_id, task->repo_id, 36);
    opts.version = task->repo_version;
    opts.file_cb = check_quota_and_active_paths_diff_files;
    opts.dir_cb = check_quota_and_active_paths_diff_dirs;
    opts.data = &data;

    const char *trees[2];
    trees[0] = local_head->root_id;
    trees[1] = master_head->root_id;
    if (FUNC0 (2, trees, &opts) < 0) {
        FUNC7 ("Failed to diff local and master head for repo %.8s.\n",
                      task->repo_id);
        ret = -1;
        goto out;
    }

    *delta = data.delta;

out:
    FUNC4 (local);
    FUNC4 (master);
    FUNC6 (local_head);
    FUNC6 (master_head);

    return ret;
}