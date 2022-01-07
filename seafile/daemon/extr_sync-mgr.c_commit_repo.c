
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int job_mgr; } ;
struct TYPE_10__ {TYPE_1__* mgr; int commit_timer; } ;
struct TYPE_9__ {scalar_t__ commit_job_running; } ;
typedef TYPE_2__ SyncTask ;


 int SYNC_ERROR_ID_NOT_ENOUGH_MEMORY ;
 int SYNC_STATE_COMMIT ;
 scalar_t__ TRUE ;
 int check_commit_state ;
 int commit_job ;
 int commit_job_done ;
 TYPE_7__* seaf ;
 scalar_t__ seaf_job_manager_schedule_job (int ,int ,int ,TYPE_2__*) ;
 int seaf_timer_new (int ,TYPE_2__*,int) ;
 int set_task_error (TYPE_2__*,int ) ;
 int transition_sync_state (TYPE_2__*,int ) ;

__attribute__((used)) static void
commit_repo (SyncTask *task)
{



    if (task->mgr->commit_job_running) {
        task->commit_timer = seaf_timer_new (check_commit_state, task, 1000);
        return;
    }

    task->mgr->commit_job_running = TRUE;

    transition_sync_state (task, SYNC_STATE_COMMIT);

    if (seaf_job_manager_schedule_job (seaf->job_mgr,
                                       commit_job,
                                       commit_job_done,
                                       task) < 0)
        set_task_error (task, SYNC_ERROR_ID_NOT_ENOUGH_MEMORY);
}
