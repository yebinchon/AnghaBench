#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_7__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  fs_mgr; } ;
struct TYPE_12__ {int /*<<< orphan*/  added_blocks; int /*<<< orphan*/  block_list; TYPE_3__* task; } ;
struct TYPE_11__ {int /*<<< orphan*/  repo_id; int /*<<< orphan*/  repo_version; } ;
struct TYPE_10__ {int /*<<< orphan*/  id; } ;
struct TYPE_9__ {int n_blocks; int /*<<< orphan*/ * blk_sha1s; } ;
typedef  TYPE_1__ Seafile ;
typedef  TYPE_2__ SeafDirent ;
typedef  TYPE_3__ HttpTxTask ;
typedef  int /*<<< orphan*/  GHashTable ;
typedef  TYPE_4__ CalcBlockListData ;

/* Variables and functions */
 int /*<<< orphan*/  EMPTY_SHA1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_str_equal ; 
 int /*<<< orphan*/  g_str_hash ; 
 TYPE_7__* seaf ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9 (int n, const char *basedir, SeafDirent *files[], void *vdata)
{
    SeafDirent *file1 = files[0];
    SeafDirent *file2 = files[1];
    CalcBlockListData *data = vdata;
    HttpTxTask *task = data->task;
    Seafile *f1 = NULL, *f2 = NULL;
    int i;

    if (file1 && FUNC8 (file1->id, EMPTY_SHA1) != 0) {
        if (!file2) {
            f1 = FUNC5 (seaf->fs_mgr,
                                              task->repo_id, task->repo_version,
                                              file1->id);
            if (!f1) {
                FUNC6 ("Failed to get seafile object %s:%s.\n",
                              task->repo_id, file1->id);
                return -1;
            }
            for (i = 0; i < f1->n_blocks; ++i)
                FUNC0 (&data->block_list, data->added_blocks,
                                   f1->blk_sha1s[i]);
            FUNC7 (f1);
        } else if (FUNC8 (file1->id, file2->id) != 0) {
            f1 = FUNC5 (seaf->fs_mgr,
                                              task->repo_id, task->repo_version,
                                              file1->id);
            if (!f1) {
                FUNC6 ("Failed to get seafile object %s:%s.\n",
                              task->repo_id, file1->id);
                return -1;
            }
            f2 = FUNC5 (seaf->fs_mgr,
                                              task->repo_id, task->repo_version,
                                              file2->id);
            if (!f2) {
                FUNC7 (f1);
                FUNC6 ("Failed to get seafile object %s:%s.\n",
                              task->repo_id, file2->id);
                return -1;
            }

            GHashTable *h = FUNC4 (g_str_hash, g_str_equal);
            int dummy;
            for (i = 0; i < f2->n_blocks; ++i)
                FUNC2 (h, f2->blk_sha1s[i], &dummy);

            for (i = 0; i < f1->n_blocks; ++i)
                if (!FUNC3 (h, f1->blk_sha1s[i]))
                    FUNC0 (&data->block_list, data->added_blocks,
                                       f1->blk_sha1s[i]);

            FUNC7 (f1);
            FUNC7 (f2);
            FUNC1 (h);
        }
    }

    return 0;
}