
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_2__* gpointer ;
struct TYPE_10__ {TYPE_1__* priv; } ;
struct TYPE_9__ {int paths; } ;
struct TYPE_8__ {int active_paths; } ;
typedef TYPE_3__ SeafSyncManager ;
typedef int GHashTableIter ;
typedef TYPE_2__ ActivePathsInfo ;


 int g_hash_table_iter_init (int *,int ) ;
 scalar_t__ g_hash_table_iter_next (int *,TYPE_2__**,TYPE_2__**) ;
 scalar_t__ g_hash_table_size (int ) ;

int
seaf_sync_manager_active_paths_number (SeafSyncManager *mgr)
{
    GHashTableIter iter;
    gpointer key, value;
    ActivePathsInfo *info;
    int ret = 0;

    g_hash_table_iter_init (&iter, mgr->priv->active_paths);
    while (g_hash_table_iter_next (&iter, &key, &value)) {
        info = value;
        ret += g_hash_table_size(info->paths);
    }

    return ret;
}
