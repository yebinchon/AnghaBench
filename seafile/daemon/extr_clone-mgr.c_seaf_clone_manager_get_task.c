
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tasks; } ;
typedef TYPE_1__ SeafCloneManager ;
typedef int CloneTask ;


 scalar_t__ g_hash_table_lookup (int ,char const*) ;

CloneTask *
seaf_clone_manager_get_task (SeafCloneManager *mgr,
                             const char *repo_id)
{
    return (CloneTask *) g_hash_table_lookup (mgr->tasks, repo_id);
}
