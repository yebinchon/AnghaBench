
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int synced_tree; int syncing_tree; int paths; } ;
typedef TYPE_1__ ActivePathsInfo ;


 int g_free (TYPE_1__*) ;
 int g_hash_table_destroy (int ) ;
 int sync_status_tree_free (int ) ;

__attribute__((used)) static void
active_paths_info_free (ActivePathsInfo *info)
{
    if (!info)
        return;
    g_hash_table_destroy (info->paths);
    sync_status_tree_free (info->syncing_tree);
    sync_status_tree_free (info->synced_tree);
    g_free (info);
}
