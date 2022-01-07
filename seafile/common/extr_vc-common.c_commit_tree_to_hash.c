
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int gboolean ;
struct TYPE_5__ {int commit_mgr; } ;
struct TYPE_4__ {int commit_id; int version; int repo_id; } ;
typedef TYPE_1__ SeafCommit ;
typedef int GHashTable ;


 int FALSE ;
 int add_to_commit_hash ;
 int g_free ;
 int g_hash_table_destroy (int *) ;
 int * g_hash_table_new_full (int ,int ,int ,int *) ;
 int g_str_equal ;
 int g_str_hash ;
 TYPE_2__* seaf ;
 int seaf_commit_manager_traverse_commit_tree (int ,int ,int ,int ,int ,int *,int ) ;

__attribute__((used)) static GHashTable *
commit_tree_to_hash (SeafCommit *head)
{
    GHashTable *hash;
    gboolean res;

    hash = g_hash_table_new_full (g_str_hash, g_str_equal, g_free, ((void*)0));

    res = seaf_commit_manager_traverse_commit_tree (seaf->commit_mgr,
                                                    head->repo_id,
                                                    head->version,
                                                    head->commit_id,
                                                    add_to_commit_hash,
                                                    hash, FALSE);
    if (!res)
        goto fail;

    return hash;

fail:
    g_hash_table_destroy (hash);
    return ((void*)0);
}
