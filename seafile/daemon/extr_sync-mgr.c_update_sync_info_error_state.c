
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ err_cnt; scalar_t__ sync_perm_err_cnt; int in_error; } ;
struct TYPE_4__ {int error; TYPE_2__* info; } ;
typedef TYPE_1__ SyncTask ;
typedef TYPE_2__ SyncInfo ;


 int FALSE ;
 scalar_t__ IN_ERROR_THRESHOLD ;
 int SYNC_STATE_ERROR ;
 int TRUE ;
 scalar_t__ is_perm_error (int ) ;

__attribute__((used)) static void
update_sync_info_error_state (SyncTask *task, int new_state)
{
    SyncInfo *info = task->info;

    if (new_state == SYNC_STATE_ERROR) {
        info->err_cnt++;
        if (info->err_cnt == IN_ERROR_THRESHOLD)
            info->in_error = TRUE;
        if (is_perm_error(task->error))
            info->sync_perm_err_cnt++;
    } else if (info->err_cnt > 0) {
        info->err_cnt = 0;
        info->in_error = FALSE;
        info->sync_perm_err_cnt = 0;
    }
}
