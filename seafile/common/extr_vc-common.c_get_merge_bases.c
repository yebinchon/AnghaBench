
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int gboolean ;
struct TYPE_8__ {int result; int commit_hash; } ;
struct TYPE_7__ {int commit_id; } ;
typedef TYPE_1__ SeafCommit ;
typedef TYPE_2__ MergeTraverseData ;


 int TRUE ;
 int compare_commit ;
 int compare_commit_by_time ;
 scalar_t__ g_hash_table_lookup (int ,int ) ;
 int g_list_find_custom (int ,TYPE_1__*,int ) ;
 int g_list_insert_sorted_with_data (int ,TYPE_1__*,int ,int *) ;
 int seaf_commit_ref (TYPE_1__*) ;

__attribute__((used)) static gboolean
get_merge_bases (SeafCommit *commit, void *vdata, gboolean *stop)
{
    MergeTraverseData *data = vdata;




    if (g_hash_table_lookup (data->commit_hash, commit->commit_id)) {
        if (!g_list_find_custom (data->result, commit, compare_commit)) {
            data->result = g_list_insert_sorted_with_data (data->result, commit,
                                                     compare_commit_by_time,
                                                     ((void*)0));
            seaf_commit_ref (commit);
        }
        *stop = TRUE;
    }

    return TRUE;
}
