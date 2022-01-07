
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int gpointer ;
struct TYPE_3__ {int handler_table; } ;
typedef TYPE_1__ CEventManager ;


 int g_hash_table_remove (int ,int ) ;

void cevent_manager_unregister (CEventManager *manager, uint32_t id)
{
    g_hash_table_remove (manager->handler_table, (gpointer)(long)id);
}
