#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  opt ;
typedef  int /*<<< orphan*/  gboolean ;
typedef  int /*<<< orphan*/  data ;
struct TYPE_14__ {int /*<<< orphan*/  repo_mgr; } ;
struct TYPE_13__ {struct TYPE_13__* data; int /*<<< orphan*/  dir_cb; int /*<<< orphan*/  file_cb; int /*<<< orphan*/  version; int /*<<< orphan*/  store_id; int /*<<< orphan*/  fold_dir_diff; int /*<<< orphan*/ ** results; } ;
struct TYPE_12__ {char* root_id; int /*<<< orphan*/  repo_id; } ;
struct TYPE_11__ {int /*<<< orphan*/  version; int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ SeafRepo ;
typedef  TYPE_2__ SeafCommit ;
typedef  int /*<<< orphan*/  GList ;
typedef  TYPE_3__ DiffOptions ;
typedef  TYPE_3__ DiffData ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int,char const**,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 TYPE_6__* seaf ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  twoway_diff_dirs ; 
 int /*<<< orphan*/  twoway_diff_files ; 

int
FUNC6 (SeafCommit *commit1, SeafCommit *commit2, GList **results,
              gboolean fold_dir_diff)
{
    SeafRepo *repo = NULL;
    DiffOptions opt;
    const char *roots[2];

    repo = FUNC4 (seaf->repo_mgr, commit1->repo_id);
    if (!repo) {
        FUNC5 ("Failed to get repo %s.\n", commit1->repo_id);
        return -1;
    }

    DiffData data;
    FUNC3 (&data, 0, sizeof(data));
    data.results = results;
    data.fold_dir_diff = fold_dir_diff;

    FUNC3 (&opt, 0, sizeof(opt));
    FUNC2 (opt.store_id, repo->id, 36);
    opt.version = repo->version;
    opt.file_cb = twoway_diff_files;
    opt.dir_cb = twoway_diff_dirs;
    opt.data = &data;

    roots[0] = commit1->root_id;
    roots[1] = commit2->root_id;

    FUNC1 (2, roots, &opt);
    FUNC0 (results);

    return 0;
}