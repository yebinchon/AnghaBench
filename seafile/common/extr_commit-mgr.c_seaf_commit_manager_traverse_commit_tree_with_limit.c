
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef scalar_t__ gboolean ;
struct TYPE_15__ {TYPE_1__* data; } ;
struct TYPE_14__ {scalar_t__ second_parent_id; scalar_t__ parent_id; int commit_id; } ;
typedef int SeafCommitManager ;
typedef TYPE_1__ SeafCommit ;
typedef TYPE_2__ GList ;
typedef int GHashTable ;
typedef int (* CommitTraverseFunc ) (TYPE_1__*,void*,scalar_t__*) ;


 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 int compare_commit_by_time ;
 int g_free ;
 int g_hash_table_destroy (int *) ;
 int * g_hash_table_new_full (int ,int ,int ,int *) ;
 int g_hash_table_replace (int *,char*,char*) ;
 TYPE_2__* g_list_delete_link (TYPE_2__*,TYPE_2__*) ;
 TYPE_2__* g_list_insert_sorted_with_data (TYPE_2__*,TYPE_1__*,int ,int *) ;
 int g_str_equal ;
 int g_str_hash ;
 char* g_strdup (int ) ;
 scalar_t__ insert_parent_commit (TYPE_2__**,int *,char const*,int,scalar_t__,scalar_t__) ;
 TYPE_1__* seaf_commit_manager_get_commit (int *,char const*,int,char const*) ;
 int seaf_commit_unref (TYPE_1__*) ;
 int seaf_warning (char*,char const*) ;

gboolean
seaf_commit_manager_traverse_commit_tree_with_limit (SeafCommitManager *mgr,
                                                     const char *repo_id,
                                                     int version,
                                                     const char *head,
                                                     CommitTraverseFunc func,
                                                     int limit,
                                                     void *data,
                                                     gboolean skip_errors)
{
    SeafCommit *commit;
    GList *list = ((void*)0);
    GHashTable *commit_hash;
    gboolean ret = TRUE;


    commit_hash = g_hash_table_new_full (g_str_hash, g_str_equal, g_free, ((void*)0));

    commit = seaf_commit_manager_get_commit (mgr, repo_id, version, head);
    if (!commit) {
        seaf_warning ("Failed to find commit %s.\n", head);
        return FALSE;
    }

    list = g_list_insert_sorted_with_data (list, commit,
                                           compare_commit_by_time,
                                           ((void*)0));

    char *key = g_strdup (commit->commit_id);
    g_hash_table_replace (commit_hash, key, key);

    int count = 0;
    while (list) {
        gboolean stop = FALSE;
        commit = list->data;
        list = g_list_delete_link (list, list);

        if (!func (commit, data, &stop)) {
            if (!skip_errors) {
                seaf_commit_unref (commit);
                ret = FALSE;
                goto out;
            }
        }


        if (limit > 0 && ++count == limit) {
            seaf_commit_unref (commit);
            break;
        }

        if (stop) {
            seaf_commit_unref (commit);



            continue;
        }

        if (commit->parent_id) {
            if (insert_parent_commit (&list, commit_hash, repo_id, version,
                                      commit->parent_id, FALSE) < 0) {
                if (!skip_errors) {
                    seaf_commit_unref (commit);
                    ret = FALSE;
                    goto out;
                }
            }
        }
        if (commit->second_parent_id) {
            if (insert_parent_commit (&list, commit_hash, repo_id, version,
                                      commit->second_parent_id, FALSE) < 0) {
                if (!skip_errors) {
                    seaf_commit_unref (commit);
                    ret = FALSE;
                    goto out;
                }
            }
        }
        seaf_commit_unref (commit);
    }

out:
    g_hash_table_destroy (commit_hash);
    while (list) {
        commit = list->data;
        seaf_commit_unref (commit);
        list = g_list_delete_link (list, list);
    }
    return ret;
}
