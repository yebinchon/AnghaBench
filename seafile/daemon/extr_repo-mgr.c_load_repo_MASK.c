#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_5__ ;
typedef  struct TYPE_26__   TYPE_4__ ;
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ gboolean ;
struct TYPE_27__ {char* commit_id; } ;
struct TYPE_26__ {char* id; char* name; int sync_interval; void* worktree; void* is_readonly; void* worktree_invalid; int /*<<< orphan*/ * head; void* server_url; void* token; void* email; scalar_t__ auto_sync; void* is_corrupted; TYPE_3__* manager; } ;
struct TYPE_25__ {TYPE_2__* priv; TYPE_1__* seaf; } ;
struct TYPE_24__ {int /*<<< orphan*/  repo_hash; int /*<<< orphan*/  db; } ;
struct TYPE_23__ {int /*<<< orphan*/  commit_mgr; int /*<<< orphan*/  branch_mgr; } ;
typedef  TYPE_3__ SeafRepoManager ;
typedef  TYPE_4__ SeafRepo ;
typedef  int /*<<< orphan*/  SeafCommit ;
typedef  TYPE_5__ SeafBranch ;

/* Variables and functions */
 void* FALSE ; 
 char* REPO_AUTO_SYNC ; 
 char* REPO_PROP_EMAIL ; 
 char* REPO_PROP_IS_READONLY ; 
 char* REPO_PROP_SERVER_URL ; 
 char* REPO_PROP_SYNC_INTERVAL ; 
 char* REPO_PROP_TOKEN ; 
 char* REPO_SYNC_WORKTREE_NAME ; 
 void* TRUE ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*) ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (void*,char*) ; 
 int /*<<< orphan*/  load_branch_cb ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,TYPE_4__*) ; 
 void* FUNC7 (TYPE_3__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,char*,char*,char*) ; 
 int /*<<< orphan*/  seaf ; 
 TYPE_5__* FUNC9 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__*) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*) ; 
 scalar_t__ FUNC14 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_3__*,TYPE_4__*) ; 
 TYPE_4__* FUNC18 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (char*,...) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (char*,int,char*,char*) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_4__*,char*,void*) ; 

__attribute__((used)) static SeafRepo *
FUNC24 (SeafRepoManager *manager, const char *repo_id)
{
    char sql[256];

    SeafRepo *repo = FUNC18(repo_id, NULL, NULL);
    if (!repo) {
        FUNC19 ("[repo mgr] failed to alloc repo.\n");
        return NULL;
    }

    repo->manager = manager;

    FUNC21(sql, 256, "SELECT branch_name FROM RepoBranch WHERE repo_id='%s'",
             repo->id);
    if (FUNC22 (manager->priv->db, sql, 
                                     load_branch_cb, repo) < 0) {
        FUNC19 ("Error read branch for repo %s.\n", repo->id);
        FUNC15 (repo);
        return NULL;
    }

    /* If repo head is set but failed to load branch or commit. */
    if (repo->is_corrupted) {
        FUNC15 (repo);
        /* remove_repo_ondisk (manager, repo_id); */
        return NULL;
    }

    /* Repo head may be not set if it's just cloned but not checked out yet. */
    if (repo->head == NULL) {
        /* the repo do not have a head branch, try to load 'master' branch */
        SeafBranch *branch =
            FUNC9 (manager->seaf->branch_mgr,
                                            repo->id, "master");
        if (branch != NULL) {
             SeafCommit *commit;

             commit =
                 FUNC11 (manager->seaf->commit_mgr,
                                                            repo->id,
                                                            branch->commit_id);
             if (commit) {
                 FUNC16 (repo, commit);
                 FUNC12 (commit);
             } else {
                 FUNC19 ("[repo-mgr] Can not find commit %s\n",
                            branch->commit_id);
                 repo->is_corrupted = TRUE;
             }

             FUNC10 (branch);
        } else {
            FUNC19 ("[repo-mgr] Failed to get branch master");
            repo->is_corrupted = TRUE;
        }
    }

    if (repo->is_corrupted) {
        FUNC15 (repo);
        /* remove_repo_ondisk (manager, repo_id); */
        return NULL;
    }

    FUNC6 (manager, repo);

    char *value;

    value = FUNC7 (manager, repo->id, REPO_AUTO_SYNC);
    if (FUNC3(value, "false") == 0) {
        repo->auto_sync = 0;
    }
    FUNC1 (value);

    repo->worktree = FUNC7 (manager, repo->id, "worktree");
    if (repo->worktree)
        repo->worktree_invalid = FALSE;

    repo->email = FUNC7 (manager, repo->id, REPO_PROP_EMAIL);
    repo->token = FUNC7 (manager, repo->id, REPO_PROP_TOKEN);

    /* May be NULL if this property is not set in db. */
    repo->server_url = FUNC7 (manager, repo->id, REPO_PROP_SERVER_URL);

    if (repo->head != NULL && FUNC14 (repo) < 0) {
        if (FUNC20(seaf)) {
            FUNC19 ("Worktree for repo \"%s\" is invalid, but still keep it.\n",
                          repo->name);
            repo->worktree_invalid = TRUE;
        } else {
            FUNC13 ("Worktree for repo \"%s\" is invalid, delete it.\n",
                          repo->name);
            FUNC17 (manager, repo);
            return NULL;
        }
    }

    /* load readonly property */
    value = FUNC7 (manager, repo->id, REPO_PROP_IS_READONLY);
    if (FUNC3(value, "true") == 0)
        repo->is_readonly = TRUE;
    else
        repo->is_readonly = FALSE;
    FUNC1 (value);

    /* load sync period property */
    value = FUNC7 (manager, repo->id, REPO_PROP_SYNC_INTERVAL);
    if (value) {
        int interval = FUNC0(value);
        if (interval > 0)
            repo->sync_interval = interval;
    }
    FUNC1 (value);

    if (repo->worktree) {
        gboolean wt_repo_name_same = FUNC5 (repo->worktree, repo->name);
        value = FUNC7 (manager, repo->id, REPO_SYNC_WORKTREE_NAME);
        if (FUNC3 (value, "true") == 0) {
            /* If need to sync worktree name with library name, update worktree folder name. */
            if (!wt_repo_name_same)
                FUNC23 (repo, repo->name, FALSE);
        } else {
            /* If an existing repo's worktree folder name is the same as repo name, but
             * sync_worktree_name property is not set, set it.
             */
            if (wt_repo_name_same)
                FUNC8 (manager, repo->id, REPO_SYNC_WORKTREE_NAME, "true");
        }
        FUNC1 (value);
    }

    FUNC2 (manager->priv->repo_hash, FUNC4(repo->id), repo);

    return repo;
}