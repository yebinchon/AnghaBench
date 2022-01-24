#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct index_state {int dummy; } ;
typedef  int /*<<< orphan*/  gboolean ;
struct TYPE_7__ {int /*<<< orphan*/  repo_mgr; } ;
struct TYPE_6__ {scalar_t__ version; int /*<<< orphan*/  worktree; int /*<<< orphan*/  id; int /*<<< orphan*/  enc_iv; int /*<<< orphan*/  enc_key; int /*<<< orphan*/  enc_version; scalar_t__ encrypted; } ;
typedef  int /*<<< orphan*/  SeafileCrypt ;
typedef  TYPE_1__ SeafRepo ;
typedef  int /*<<< orphan*/  LockedFileSet ;
typedef  int /*<<< orphan*/  GList ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*,struct index_state*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct index_state*,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__* seaf ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9 (SeafRepo *repo, struct index_state *istate, gboolean is_force_commit)
{
    SeafileCrypt *crypt = NULL;
    LockedFileSet *fset = NULL;
    GList *ignore_list = NULL;
    int ret = 0;

    if (repo->encrypted) {
        crypt = FUNC8 (repo->enc_version, repo->enc_key, repo->enc_iv);
    }

#if defined WIN32 || defined __APPLE__
    if (repo->version > 0)
        fset = seaf_repo_manager_get_locked_file_set (seaf->repo_mgr, repo->id);
#endif

    ignore_list = FUNC5 (repo->worktree);

    if (!is_force_commit) {
        if (FUNC0 (repo, istate, crypt, ignore_list, fset) < 0) {
            FUNC7 ("Failed to apply worktree changes to index.\n");
            ret = -1;
        }
    } else if (FUNC3 (istate, repo, crypt, ignore_list, fset) < 0) {
        FUNC7 ("Failed to scan worktree for changes.\n");
        ret = -1;
    }

    FUNC4 (ignore_list);

#if defined WIN32 || defined __APPLE__
    locked_file_set_free (fset);
#endif

    FUNC1 (crypt);

    return ret;
}