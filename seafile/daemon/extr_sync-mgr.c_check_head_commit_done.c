
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int head_commit; int is_corrupt; int is_deleted; int error_code; int check_success; } ;
struct TYPE_8__ {int head_commit; int repo_corrupted; int deleted_on_relay; } ;
struct TYPE_7__ {TYPE_2__* info; } ;
typedef TYPE_1__ SyncTask ;
typedef TYPE_2__ SyncInfo ;
typedef TYPE_3__ HttpHeadCommit ;


 int memcpy (int ,int ,int) ;
 int set_task_error (TYPE_1__*,int ) ;
 int update_sync_status_v2 (TYPE_1__*) ;

__attribute__((used)) static void
check_head_commit_done (HttpHeadCommit *result, void *user_data)
{
    SyncTask *task = user_data;
    SyncInfo *info = task->info;

    if (!result->check_success) {
        set_task_error (task, result->error_code);
        return;
    }

    info->deleted_on_relay = result->is_deleted;
    info->repo_corrupted = result->is_corrupt;
    memcpy (info->head_commit, result->head_commit, 40);

    update_sync_status_v2 (task);
}
