
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* priv; } ;
struct TYPE_4__ {int upload_tasks; } ;
typedef TYPE_2__ HttpTxManager ;
typedef int GList ;


 int * g_hash_table_get_values (int ) ;

GList*
http_tx_manager_get_upload_tasks (HttpTxManager *manager)
{
    return g_hash_table_get_values (manager->priv->upload_tasks);
}
