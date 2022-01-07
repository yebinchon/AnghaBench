
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ gboolean ;
struct TYPE_2__ {int commit_mgr; } ;
typedef int SeafCommit ;
typedef int GList ;
typedef int GHashTable ;


 int compare_commit_by_time ;
 int * g_hash_table_lookup (int *,char const*) ;
 int g_hash_table_replace (int *,char*,char*) ;
 int * g_list_insert_sorted_with_data (int *,int *,int ,int *) ;
 char* g_strdup (char const*) ;
 TYPE_1__* seaf ;
 int * seaf_commit_manager_get_commit (int ,char const*,int,char const*) ;
 int seaf_warning (char*,char const*) ;

__attribute__((used)) inline static int
insert_parent_commit (GList **list, GHashTable *hash,
                      const char *repo_id, int version,
                      const char *parent_id, gboolean allow_truncate)
{
    SeafCommit *p;
    char *key;

    if (g_hash_table_lookup (hash, parent_id) != ((void*)0))
        return 0;

    p = seaf_commit_manager_get_commit (seaf->commit_mgr,
                                        repo_id, version,
                                        parent_id);
    if (!p) {
        if (allow_truncate)
            return 0;
        seaf_warning ("Failed to find commit %s\n", parent_id);
        return -1;
    }

    *list = g_list_insert_sorted_with_data (*list, p,
                                           compare_commit_by_time,
                                           ((void*)0));

    key = g_strdup (parent_id);
    g_hash_table_replace (hash, key, key);

    return 0;
}
