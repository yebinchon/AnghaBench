
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* gpointer ;
struct TYPE_9__ {TYPE_3__* priv; } ;
struct TYPE_8__ {int upload_tasks; int download_tasks; } ;
struct TYPE_7__ {int tx_bytes; void* last_tx_bytes; } ;
typedef TYPE_1__ HttpTxTask ;
typedef TYPE_3__ HttpTxPriv ;
typedef TYPE_4__ HttpTxManager ;
typedef int GHashTableIter ;


 void* g_atomic_int_get (int *) ;
 int g_atomic_int_set (int *,int ) ;
 int g_hash_table_iter_init (int *,int ) ;
 scalar_t__ g_hash_table_iter_next (int *,TYPE_1__**,TYPE_1__**) ;

__attribute__((used)) static int
reset_bytes (void *vdata)
{
    HttpTxManager *mgr = vdata;
    HttpTxPriv *priv = mgr->priv;
    GHashTableIter iter;
    gpointer key, value;
    HttpTxTask *task;

    g_hash_table_iter_init (&iter, priv->download_tasks);
    while (g_hash_table_iter_next (&iter, &key, &value)) {
        task = value;
        task->last_tx_bytes = g_atomic_int_get (&task->tx_bytes);
        g_atomic_int_set (&task->tx_bytes, 0);
    }

    g_hash_table_iter_init (&iter, priv->upload_tasks);
    while (g_hash_table_iter_next (&iter, &key, &value)) {
        task = value;
        task->last_tx_bytes = g_atomic_int_get (&task->tx_bytes);
        g_atomic_int_set (&task->tx_bytes, 0);
    }

    return 1;
}
