
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sync_mgr; } ;
typedef int GError ;


 TYPE_1__* seaf ;
 int seaf_sync_manager_is_auto_sync_enabled (int ) ;

int seafile_is_auto_sync_enabled (GError **error)
{
    return seaf_sync_manager_is_auto_sync_enabled (seaf->sync_mgr);
}
