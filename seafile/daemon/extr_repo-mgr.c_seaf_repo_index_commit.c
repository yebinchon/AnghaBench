
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct index_state {int cache_nr; int cache; int cache_changed; } ;
struct cache_tree {int sha1; } ;
typedef int istate ;
typedef int gboolean ;
struct TYPE_18__ {int commit_mgr; } ;
struct TYPE_17__ {int root_id; } ;
struct TYPE_16__ {char* id; int version; TYPE_1__* head; int worktree; int * changeset; TYPE_2__* manager; } ;
struct TYPE_15__ {char* index_dir; } ;
struct TYPE_14__ {int commit_id; } ;
typedef TYPE_2__ SeafRepoManager ;
typedef TYPE_3__ SeafRepo ;
typedef TYPE_4__ SeafCommit ;
typedef int GList ;
typedef int GError ;
typedef int GDestroyNotify ;
typedef int ChangeSet ;


 int SEAFILE_DOMAIN ;
 int SEAF_ERR_GENERAL ;
 int SEAF_ERR_INTERNAL ;
 int SEAF_PATH_MAX ;
 int TRUE ;
 struct cache_tree* cache_tree () ;
 int cache_tree_free (struct cache_tree**) ;
 scalar_t__ cache_tree_update (char*,int ,int ,struct cache_tree*,int ,int ,int ,int ,int ) ;
 int changeset_free (int *) ;
 int * changeset_new (char*) ;
 int check_worktree_common (TYPE_3__*) ;
 scalar_t__ commit_tree (TYPE_3__*,char*,char*,char*) ;
 char* commit_tree_from_changeset (int *) ;
 int commit_trees_cb ;
 int compare_index_changeset (struct index_state*,int *) ;
 int diff_commit_roots (char*,int ,int ,char*,int **,int ) ;
 scalar_t__ diff_entry_free ;
 char* diff_results_to_description (int *) ;
 int discard_index (struct index_state*) ;
 int g_free (char*) ;
 int g_list_free_full (int *,int ) ;
 int g_set_error (int **,int ,int ,char*) ;
 int g_signal_emit_by_name (TYPE_8__*,char*,TYPE_3__*) ;
 char* g_strdup (char*) ;
 scalar_t__ index_add (TYPE_3__*,struct index_state*,int ) ;
 int memset (struct index_state*,int ,int) ;
 int rawdata_to_hex (int ,char*,int) ;
 scalar_t__ read_index_from (struct index_state*,char*,int ) ;
 TYPE_8__* seaf ;
 TYPE_4__* seaf_commit_manager_get_commit (int ,char*,int ,int ) ;
 int seaf_commit_unref (TYPE_4__*) ;
 int seaf_message (char*,char*) ;
 int seaf_warning (char*,...) ;
 int snprintf (char*,int,char*,char*,char*) ;
 scalar_t__ strcmp (int ,char*) ;
 scalar_t__ update_index (struct index_state*,char*) ;

char *
seaf_repo_index_commit (SeafRepo *repo,
                        gboolean is_force_commit,
                        gboolean is_initial_commit,
                        GError **error)
{
    SeafRepoManager *mgr = repo->manager;
    struct index_state istate;
    char index_path[SEAF_PATH_MAX];
    SeafCommit *head = ((void*)0);
    char *new_root_id = ((void*)0);
    char commit_id[41];
    ChangeSet *changeset = ((void*)0);
    GList *diff_results = ((void*)0);
    char *desc = ((void*)0);
    char *ret = ((void*)0);

    if (!check_worktree_common (repo))
        return ((void*)0);

    memset (&istate, 0, sizeof(istate));
    snprintf (index_path, SEAF_PATH_MAX, "%s/%s", mgr->index_dir, repo->id);
    if (read_index_from (&istate, index_path, repo->version) < 0) {
        seaf_warning ("Failed to load index.\n");
        g_set_error (error, SEAFILE_DOMAIN, SEAF_ERR_INTERNAL, "Internal data structure error");
        return ((void*)0);
    }

    changeset = changeset_new (repo->id);
    if (!changeset) {
        g_set_error (error, SEAFILE_DOMAIN, SEAF_ERR_INTERNAL, "Internal data structure error");
        goto out;
    }

    repo->changeset = changeset;

    if (index_add (repo, &istate, is_force_commit) < 0) {
        g_set_error (error, SEAFILE_DOMAIN, SEAF_ERR_GENERAL, "Failed to add");
        goto out;
    }

    if (!istate.cache_changed)
        goto out;

    if (!is_initial_commit && !is_force_commit) {
        new_root_id = commit_tree_from_changeset (changeset);
        if (!new_root_id) {
            seaf_warning ("Create commit tree failed for repo %s\n", repo->id);
            g_set_error (error, SEAFILE_DOMAIN, SEAF_ERR_GENERAL,
                         "Failed to generate commit");
            goto out;
        }
    } else {
        char hex[41];
        struct cache_tree *it = cache_tree ();
        if (cache_tree_update (repo->id, repo->version,
                               repo->worktree,
                               it, istate.cache,
                               istate.cache_nr, 0, 0, commit_trees_cb) < 0) {
            seaf_warning ("Failed to build cache tree");
            g_set_error (error, SEAFILE_DOMAIN, SEAF_ERR_INTERNAL,
                         "Internal data structure error");
            cache_tree_free (&it);
            goto out;
        }
        rawdata_to_hex (it->sha1, hex, 20);
        new_root_id = g_strdup(hex);
        cache_tree_free (&it);
    }

    head = seaf_commit_manager_get_commit (seaf->commit_mgr,
                                           repo->id, repo->version,
                                           repo->head->commit_id);
    if (!head) {
        seaf_warning ("Head commit %s for repo %s not found\n",
                      repo->head->commit_id, repo->id);
        g_set_error (error, SEAFILE_DOMAIN, SEAF_ERR_INTERNAL, "Data corrupt");
        goto out;
    }

    if (strcmp (head->root_id, new_root_id) == 0) {
        seaf_message ("No change to the fs tree of repo %s\n", repo->id);



        if (!is_initial_commit && !is_force_commit)
            compare_index_changeset (&istate, changeset);

        update_index (&istate, index_path);
        goto out;
    }

    diff_commit_roots (repo->id, repo->version, head->root_id, new_root_id, &diff_results, TRUE);
    desc = diff_results_to_description (diff_results);
    if (!desc)
        desc = g_strdup("");

    if (commit_tree (repo, new_root_id, desc, commit_id) < 0) {
        seaf_warning ("Failed to save commit file");
        g_set_error (error, SEAFILE_DOMAIN, SEAF_ERR_INTERNAL, "Internal error");
        goto out;
    }

    if (update_index (&istate, index_path) < 0) {
        g_set_error (error, SEAFILE_DOMAIN, SEAF_ERR_INTERNAL, "Internal error");
        goto out;
    }

    g_signal_emit_by_name (seaf, "repo-committed", repo);

    ret = g_strdup(commit_id);

out:
    g_free (desc);
    seaf_commit_unref (head);
    g_free (new_root_id);
    changeset_free (changeset);
    g_list_free_full (diff_results, (GDestroyNotify)diff_entry_free);
    discard_index (&istate);
    return ret;
}
