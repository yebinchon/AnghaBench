
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int json_t ;
struct TYPE_2__ {int mq_mgr; } ;
typedef int GError ;


 TYPE_1__* seaf ;
 int * seaf_mq_manager_pop_message (int ) ;

json_t *
seafile_get_sync_notification (GError **error)
{
    return seaf_mq_manager_pop_message (seaf->mq_mgr);
}
