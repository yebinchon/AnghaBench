
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* gpointer ;
struct TYPE_4__ {int sync_mgr; } ;
struct TYPE_3__ {int repo_id; } ;
typedef TYPE_1__ HttpTxTask ;


 int SYNC_STATUS_SYNCING ;
 TYPE_2__* seaf ;
 int seaf_sync_manager_update_active_path (int ,int ,char*,int,int ) ;

__attribute__((used)) static void
set_path_status_syncing (gpointer key, gpointer value, gpointer user_data)
{
    HttpTxTask *task = user_data;
    char *path = key;
    int mode = (int)(long)value;
    seaf_sync_manager_update_active_path (seaf->sync_mgr,
                                          task->repo_id,
                                          path,
                                          mode,
                                          SYNC_STATUS_SYNCING);
}
