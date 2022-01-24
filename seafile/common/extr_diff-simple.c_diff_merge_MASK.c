#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_8__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  opt ;
typedef  int /*<<< orphan*/  gboolean ;
typedef  int /*<<< orphan*/  data ;
struct TYPE_15__ {int /*<<< orphan*/  commit_mgr; int /*<<< orphan*/  repo_mgr; } ;
struct TYPE_14__ {struct TYPE_14__* data; int /*<<< orphan*/  dir_cb; int /*<<< orphan*/  file_cb; int /*<<< orphan*/  version; int /*<<< orphan*/  store_id; int /*<<< orphan*/  fold_dir_diff; int /*<<< orphan*/ ** results; } ;
struct TYPE_13__ {char* root_id; int /*<<< orphan*/ * second_parent_id; int /*<<< orphan*/ * parent_id; int /*<<< orphan*/  repo_id; } ;
struct TYPE_12__ {int /*<<< orphan*/  version; int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ SeafRepo ;
typedef  TYPE_2__ SeafCommit ;
typedef  int /*<<< orphan*/  GList ;
typedef  TYPE_3__ DiffOptions ;
typedef  TYPE_3__ DiffData ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **) ; 
 int FUNC1 (int,char const**,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 TYPE_8__* seaf ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  threeway_diff_dirs ; 
 int /*<<< orphan*/  threeway_diff_files ; 

int
FUNC9 (SeafCommit *merge, GList **results, gboolean fold_dir_diff)
{
    SeafRepo *repo = NULL;
    DiffOptions opt;
    const char *roots[3];
    SeafCommit *parent1, *parent2;

    FUNC2 (*results == NULL, -1);
    FUNC2 (merge->parent_id != NULL &&
                          merge->second_parent_id != NULL,
                          -1);

    repo = FUNC7 (seaf->repo_mgr, merge->repo_id);
    if (!repo) {
        FUNC8 ("Failed to get repo %s.\n", merge->repo_id);
        return -1;
    }

    parent1 = FUNC5 (seaf->commit_mgr,
                                              repo->id,
                                              repo->version,
                                              merge->parent_id);
    if (!parent1) {
        FUNC8 ("failed to find commit %s:%s.\n", repo->id, merge->parent_id);
        return -1;
    }

    parent2 = FUNC5 (seaf->commit_mgr,
                                              repo->id,
                                              repo->version,
                                              merge->second_parent_id);
    if (!parent2) {
        FUNC8 ("failed to find commit %s:%s.\n",
                      repo->id, merge->second_parent_id);
        FUNC6 (parent1);
        return -1;
    }

    DiffData data;
    FUNC4 (&data, 0, sizeof(data));
    data.results = results;
    data.fold_dir_diff = fold_dir_diff;

    FUNC4 (&opt, 0, sizeof(opt));
    FUNC3 (opt.store_id, repo->id, 36);
    opt.version = repo->version;
    opt.file_cb = threeway_diff_files;
    opt.dir_cb = threeway_diff_dirs;
    opt.data = &data;

    roots[0] = merge->root_id;
    roots[1] = parent1->root_id;
    roots[2] = parent2->root_id;

    int ret = FUNC1 (3, roots, &opt);
    FUNC0 (results);

    FUNC6 (parent1);
    FUNC6 (parent2);

    return ret;
}