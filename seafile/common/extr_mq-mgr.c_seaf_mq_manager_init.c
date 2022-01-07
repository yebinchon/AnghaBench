
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* priv; } ;
struct TYPE_4__ {int chans; } ;
typedef TYPE_2__ SeafMqManager ;
typedef int GDestroyNotify ;


 int SEAFILE_NOTIFY_CHAN ;
 int g_async_queue_new_full (int ) ;
 int g_hash_table_replace (int ,int ,int ) ;
 int g_strdup (int ) ;
 scalar_t__ json_decref ;

void
seaf_mq_manager_init (SeafMqManager *mgr)
{
    g_hash_table_replace (mgr->priv->chans, g_strdup (SEAFILE_NOTIFY_CHAN),
                          g_async_queue_new_full ((GDestroyNotify)json_decref));
}
