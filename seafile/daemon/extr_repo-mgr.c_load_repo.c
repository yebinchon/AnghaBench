
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_5__ ;
typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;


typedef scalar_t__ gboolean ;
struct TYPE_27__ {char* commit_id; } ;
struct TYPE_26__ {char* id; char* name; int sync_interval; void* worktree; void* is_readonly; void* worktree_invalid; int * head; void* server_url; void* token; void* email; scalar_t__ auto_sync; void* is_corrupted; TYPE_3__* manager; } ;
struct TYPE_25__ {TYPE_2__* priv; TYPE_1__* seaf; } ;
struct TYPE_24__ {int repo_hash; int db; } ;
struct TYPE_23__ {int commit_mgr; int branch_mgr; } ;
typedef TYPE_3__ SeafRepoManager ;
typedef TYPE_4__ SeafRepo ;
typedef int SeafCommit ;
typedef TYPE_5__ SeafBranch ;


 void* FALSE ;
 char* REPO_AUTO_SYNC ;
 char* REPO_PROP_EMAIL ;
 char* REPO_PROP_IS_READONLY ;
 char* REPO_PROP_SERVER_URL ;
 char* REPO_PROP_SYNC_INTERVAL ;
 char* REPO_PROP_TOKEN ;
 char* REPO_SYNC_WORKTREE_NAME ;
 void* TRUE ;
 int atoi (char*) ;
 int g_free (char*) ;
 int g_hash_table_insert (int ,int ,TYPE_4__*) ;
 scalar_t__ g_strcmp0 (char*,char*) ;
 int g_strdup (char*) ;
 scalar_t__ is_wt_repo_name_same (void*,char*) ;
 int load_branch_cb ;
 int load_repo_passwd (TYPE_3__*,TYPE_4__*) ;
 void* load_repo_property (TYPE_3__*,char*,char*) ;
 int save_repo_property (TYPE_3__*,char*,char*,char*) ;
 int seaf ;
 TYPE_5__* seaf_branch_manager_get_branch (int ,char*,char*) ;
 int seaf_branch_unref (TYPE_5__*) ;
 int * seaf_commit_manager_get_commit_compatible (int ,char*,char*) ;
 int seaf_commit_unref (int *) ;
 int seaf_message (char*,char*) ;
 scalar_t__ seaf_repo_check_worktree (TYPE_4__*) ;
 int seaf_repo_free (TYPE_4__*) ;
 int seaf_repo_from_commit (TYPE_4__*,int *) ;
 int seaf_repo_manager_del_repo (TYPE_3__*,TYPE_4__*) ;
 TYPE_4__* seaf_repo_new (char const*,int *,int *) ;
 int seaf_warning (char*,...) ;
 scalar_t__ seafile_session_config_get_allow_invalid_worktree (int ) ;
 int snprintf (char*,int,char*,char*) ;
 scalar_t__ sqlite_foreach_selected_row (int ,char*,int ,TYPE_4__*) ;
 int update_repo_worktree_name (TYPE_4__*,char*,void*) ;

__attribute__((used)) static SeafRepo *
load_repo (SeafRepoManager *manager, const char *repo_id)
{
    char sql[256];

    SeafRepo *repo = seaf_repo_new(repo_id, ((void*)0), ((void*)0));
    if (!repo) {
        seaf_warning ("[repo mgr] failed to alloc repo.\n");
        return ((void*)0);
    }

    repo->manager = manager;

    snprintf(sql, 256, "SELECT branch_name FROM RepoBranch WHERE repo_id='%s'",
             repo->id);
    if (sqlite_foreach_selected_row (manager->priv->db, sql,
                                     load_branch_cb, repo) < 0) {
        seaf_warning ("Error read branch for repo %s.\n", repo->id);
        seaf_repo_free (repo);
        return ((void*)0);
    }


    if (repo->is_corrupted) {
        seaf_repo_free (repo);

        return ((void*)0);
    }


    if (repo->head == ((void*)0)) {

        SeafBranch *branch =
            seaf_branch_manager_get_branch (manager->seaf->branch_mgr,
                                            repo->id, "master");
        if (branch != ((void*)0)) {
             SeafCommit *commit;

             commit =
                 seaf_commit_manager_get_commit_compatible (manager->seaf->commit_mgr,
                                                            repo->id,
                                                            branch->commit_id);
             if (commit) {
                 seaf_repo_from_commit (repo, commit);
                 seaf_commit_unref (commit);
             } else {
                 seaf_warning ("[repo-mgr] Can not find commit %s\n",
                            branch->commit_id);
                 repo->is_corrupted = TRUE;
             }

             seaf_branch_unref (branch);
        } else {
            seaf_warning ("[repo-mgr] Failed to get branch master");
            repo->is_corrupted = TRUE;
        }
    }

    if (repo->is_corrupted) {
        seaf_repo_free (repo);

        return ((void*)0);
    }

    load_repo_passwd (manager, repo);

    char *value;

    value = load_repo_property (manager, repo->id, REPO_AUTO_SYNC);
    if (g_strcmp0(value, "false") == 0) {
        repo->auto_sync = 0;
    }
    g_free (value);

    repo->worktree = load_repo_property (manager, repo->id, "worktree");
    if (repo->worktree)
        repo->worktree_invalid = FALSE;

    repo->email = load_repo_property (manager, repo->id, REPO_PROP_EMAIL);
    repo->token = load_repo_property (manager, repo->id, REPO_PROP_TOKEN);


    repo->server_url = load_repo_property (manager, repo->id, REPO_PROP_SERVER_URL);

    if (repo->head != ((void*)0) && seaf_repo_check_worktree (repo) < 0) {
        if (seafile_session_config_get_allow_invalid_worktree(seaf)) {
            seaf_warning ("Worktree for repo \"%s\" is invalid, but still keep it.\n",
                          repo->name);
            repo->worktree_invalid = TRUE;
        } else {
            seaf_message ("Worktree for repo \"%s\" is invalid, delete it.\n",
                          repo->name);
            seaf_repo_manager_del_repo (manager, repo);
            return ((void*)0);
        }
    }


    value = load_repo_property (manager, repo->id, REPO_PROP_IS_READONLY);
    if (g_strcmp0(value, "true") == 0)
        repo->is_readonly = TRUE;
    else
        repo->is_readonly = FALSE;
    g_free (value);


    value = load_repo_property (manager, repo->id, REPO_PROP_SYNC_INTERVAL);
    if (value) {
        int interval = atoi(value);
        if (interval > 0)
            repo->sync_interval = interval;
    }
    g_free (value);

    if (repo->worktree) {
        gboolean wt_repo_name_same = is_wt_repo_name_same (repo->worktree, repo->name);
        value = load_repo_property (manager, repo->id, REPO_SYNC_WORKTREE_NAME);
        if (g_strcmp0 (value, "true") == 0) {

            if (!wt_repo_name_same)
                update_repo_worktree_name (repo, repo->name, FALSE);
        } else {



            if (wt_repo_name_same)
                save_repo_property (manager, repo->id, REPO_SYNC_WORKTREE_NAME, "true");
        }
        g_free (value);
    }

    g_hash_table_insert (manager->priv->repo_hash, g_strdup(repo->id), repo);

    return repo;
}
