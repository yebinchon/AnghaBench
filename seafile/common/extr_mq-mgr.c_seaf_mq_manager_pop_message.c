
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int json_t ;
struct TYPE_5__ {TYPE_1__* priv; } ;
struct TYPE_4__ {int chans; } ;
typedef TYPE_2__ SeafMqManager ;
typedef int GAsyncQueue ;


 char* SEAFILE_NOTIFY_CHAN ;
 int * g_async_queue_try_pop (int *) ;
 int * g_hash_table_lookup (int ,char const*) ;
 int seaf_warning (char*,char const*) ;

json_t *
seaf_mq_manager_pop_message (SeafMqManager *mgr)
{
    const char *chan = SEAFILE_NOTIFY_CHAN;
    GAsyncQueue *async_queue = g_hash_table_lookup (mgr->priv->chans, chan);
    if (!async_queue) {
        seaf_warning ("Unkonwn message channel %s.\n", chan);
        return ((void*)0);
    }

    return g_async_queue_try_pop (async_queue);
}
