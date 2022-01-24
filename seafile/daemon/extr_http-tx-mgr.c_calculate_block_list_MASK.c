#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;
typedef  struct TYPE_16__   TYPE_11__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  opts ;
typedef  int /*<<< orphan*/  data ;
struct TYPE_21__ {TYPE_4__* block_list; int /*<<< orphan*/  added_blocks; struct TYPE_21__* data; int /*<<< orphan*/  dir_cb; int /*<<< orphan*/  file_cb; int /*<<< orphan*/  version; int /*<<< orphan*/  store_id; TYPE_3__* task; } ;
struct TYPE_20__ {int /*<<< orphan*/  data; struct TYPE_20__* next; } ;
struct TYPE_19__ {int /*<<< orphan*/  repo_id; int /*<<< orphan*/  repo_version; } ;
struct TYPE_18__ {int /*<<< orphan*/  commit_id; } ;
struct TYPE_17__ {char* root_id; } ;
struct TYPE_16__ {int /*<<< orphan*/  commit_mgr; int /*<<< orphan*/  branch_mgr; } ;
typedef  TYPE_1__ SeafCommit ;
typedef  TYPE_2__ SeafBranch ;
typedef  TYPE_3__ HttpTxTask ;
typedef  TYPE_4__ GList ;
typedef  TYPE_5__ DiffOptions ;
typedef  TYPE_5__ CalcBlockListData ;

/* Variables and functions */
 int /*<<< orphan*/  block_list_diff_dirs ; 
 int /*<<< orphan*/  block_list_diff_files ; 
 scalar_t__ FUNC0 (int,char const**,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  (*) (int /*<<< orphan*/ ),int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  g_str_equal ; 
 int /*<<< orphan*/  g_str_hash ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 
 TYPE_11__* seaf ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC11 (HttpTxTask *task, GList **plist)
{
    int ret = 0;
    SeafBranch *local = NULL, *master = NULL;
    SeafCommit *local_head = NULL, *master_head = NULL;

    local = FUNC6 (seaf->branch_mgr, task->repo_id, "local");
    if (!local) {
        FUNC10 ("Branch local not found for repo %.8s.\n", task->repo_id);
        ret = -1;
        goto out;
    }
    master = FUNC6 (seaf->branch_mgr, task->repo_id, "master");
    if (!master) {
        FUNC10 ("Branch master not found for repo %.8s.\n", task->repo_id);
        ret = -1;
        goto out;
    }

    local_head = FUNC8 (seaf->commit_mgr,
                                                 task->repo_id, task->repo_version,
                                                 local->commit_id);
    if (!local_head) {
        FUNC10 ("Local head commit not found for repo %.8s.\n",
                      task->repo_id);
        ret = -1;
        goto out;
    }
    master_head = FUNC8 (seaf->commit_mgr,
                                                 task->repo_id, task->repo_version,
                                                 master->commit_id);
    if (!master_head) {
        FUNC10 ("Master head commit not found for repo %.8s.\n",
                      task->repo_id);
        ret = -1;
        goto out;
    }

    CalcBlockListData data;
    FUNC5 (&data, 0, sizeof(data));
    data.added_blocks = FUNC3 (g_str_hash, g_str_equal, g_free, NULL);
    data.task = task;

    DiffOptions opts;
    FUNC5 (&opts, 0, sizeof(opts));
    FUNC4 (opts.store_id, task->repo_id, 36);
    opts.version = task->repo_version;
    opts.file_cb = block_list_diff_files;
    opts.dir_cb = block_list_diff_dirs;
    opts.data = &data;

    const char *trees[2];
    trees[0] = local_head->root_id;
    trees[1] = master_head->root_id;
    if (FUNC0 (2, trees, &opts) < 0) {
        FUNC10 ("Failed to diff local and master head for repo %.8s.\n",
                      task->repo_id);
        FUNC2 (data.added_blocks);

        GList *ptr;
        for (ptr = data.block_list; ptr; ptr = ptr->next)
            FUNC1 (ptr->data);

        ret = -1;
        goto out;
    }

    FUNC2 (data.added_blocks);
    *plist = data.block_list;

out:
    FUNC7 (local);
    FUNC7 (master);
    FUNC9 (local_head);
    FUNC9 (master_head);
    return ret;
}