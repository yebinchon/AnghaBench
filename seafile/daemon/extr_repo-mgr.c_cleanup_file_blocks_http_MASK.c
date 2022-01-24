#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  block_mgr; int /*<<< orphan*/  fs_mgr; } ;
struct TYPE_8__ {int /*<<< orphan*/  ref_cnt_lock; int /*<<< orphan*/  blk_ref_cnts; int /*<<< orphan*/  repo_version; int /*<<< orphan*/  repo_id; } ;
struct TYPE_7__ {int n_blocks; char** blk_sha1s; } ;
typedef  TYPE_1__ Seafile ;
typedef  TYPE_2__ HttpTxTask ;

/* Variables and functions */
 int* FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_5__* seaf ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC8 (HttpTxTask *task, const char *file_id)
{
    Seafile *file;
    int i;
    char *block_id;
    int *pcnt;

    file = FUNC5 (seaf->fs_mgr,
                                        task->repo_id, task->repo_version,
                                        file_id);
    if (!file) {
        FUNC6 ("Failed to load seafile object %s:%s\n",
                      task->repo_id, file_id);
        return;
    }

    for (i = 0; i < file->n_blocks; ++i) {
        block_id = file->blk_sha1s[i];

        FUNC2 (&task->ref_cnt_lock);

        pcnt = FUNC0 (task->blk_ref_cnts, block_id);
        if (pcnt) {
            --(*pcnt);
            if (*pcnt > 0) {
                FUNC3 (&task->ref_cnt_lock);
                continue;
            }
        }

        FUNC4 (seaf->block_mgr,
                                         task->repo_id, task->repo_version,
                                         block_id);
        FUNC1 (task->blk_ref_cnts, block_id);

        FUNC3 (&task->ref_cnt_lock);
    }

    FUNC7 (file);
}