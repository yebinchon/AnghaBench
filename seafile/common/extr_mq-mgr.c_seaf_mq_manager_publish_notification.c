
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
 int g_async_queue_push (int *,int *) ;
 int * g_hash_table_lookup (int ,char const*) ;
 int * json_object () ;
 int json_object_set_new (int *,char*,int ) ;
 int json_string (char const*) ;
 int seaf_warning (char*,...) ;

void
seaf_mq_manager_publish_notification (SeafMqManager *mgr, const char *type, const char *content)
{
    const char *chan = SEAFILE_NOTIFY_CHAN;
    GAsyncQueue *async_queue = g_hash_table_lookup (mgr->priv->chans, chan);
    if (!async_queue) {
        seaf_warning ("Unkonwn message channel %s.\n", chan);
        return;
    }

    if (!type || !content) {
        seaf_warning ("type and content should not be NULL.\n");
        return;
    }

    json_t *msg = json_object ();
    json_object_set_new (msg, "type", json_string(type));
    json_object_set_new (msg, "content", json_string(content));

    g_async_queue_push (async_queue, msg);
}
