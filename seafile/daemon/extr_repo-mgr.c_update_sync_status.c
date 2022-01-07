
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cache_entry {int ce_mode; int name; } ;
struct TYPE_2__ {int sync_mgr; } ;


 int SYNC_STATUS_SYNCED ;
 TYPE_1__* seaf ;
 int seaf_sync_manager_update_active_path (int ,char*,int ,int ,int ) ;

__attribute__((used)) static void
update_sync_status (struct cache_entry *ce, void *user_data)
{
    char *repo_id = user_data;

    seaf_sync_manager_update_active_path (seaf->sync_mgr,
                                          repo_id,
                                          ce->name,
                                          ce->ce_mode,
                                          SYNC_STATUS_SYNCED);
}
