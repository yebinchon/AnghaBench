
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef int gboolean ;
struct TYPE_22__ {int commit_mgr; } ;
struct TYPE_21__ {TYPE_1__* data; int next; } ;
struct TYPE_20__ {TYPE_3__* result; int * commit_hash; } ;
struct TYPE_19__ {int commit_id; int version; int repo_id; } ;
typedef TYPE_1__ SeafCommit ;
typedef TYPE_2__ MergeTraverseData ;
typedef TYPE_3__ GList ;
typedef int GHashTable ;


 int FALSE ;
 int * commit_tree_to_hash (TYPE_1__*) ;
 int g_hash_table_destroy (int *) ;
 TYPE_3__* g_list_append (TYPE_3__*,TYPE_1__*) ;
 TYPE_3__* g_list_delete_link (TYPE_3__*,TYPE_3__*) ;
 int g_warning (char*) ;
 TYPE_3__* get_independent_commits (TYPE_3__*) ;
 int get_merge_bases ;
 TYPE_6__* seaf ;
 int seaf_commit_manager_traverse_commit_tree (int ,int ,int ,int ,int ,TYPE_2__*,int ) ;
 int seaf_commit_unref (TYPE_1__*) ;

__attribute__((used)) static GList *
merge_bases_many (SeafCommit *one, int n, SeafCommit **twos)
{
    GHashTable *commit_hash;
    GList *result = ((void*)0);
    SeafCommit *commit;
    int i;
    MergeTraverseData data;
    gboolean res;

    for (i = 0; i < n; i++) {
        if (one == twos[i])
            return g_list_append (result, one);
    }


    commit_hash = commit_tree_to_hash (one);
    if (!commit_hash) {
        g_warning ("Failed to load commit hash.\n");
        return ((void*)0);
    }

    data.commit_hash = commit_hash;
    data.result = ((void*)0);

    for (i = 0; i < n; i++) {
        res = seaf_commit_manager_traverse_commit_tree (seaf->commit_mgr,
                                                        twos[i]->repo_id,
                                                        twos[i]->version,
                                                        twos[i]->commit_id,
                                                        get_merge_bases,
                                                        &data, FALSE);
        if (!res)
            goto fail;
    }

    g_hash_table_destroy (commit_hash);
    result = data.result;

    if (!result || !result->next)
        return result;


    result = get_independent_commits (result);

    return result;

fail:
    result = data.result;
    while (result) {
        commit = result->data;
        seaf_commit_unref (commit);
        result = g_list_delete_link (result, result);
    }
    g_hash_table_destroy (commit_hash);
    return ((void*)0);
}
