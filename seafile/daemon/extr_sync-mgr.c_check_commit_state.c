
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int commit_timer; TYPE_1__* mgr; } ;
struct TYPE_4__ {int commit_job_running; } ;
typedef TYPE_2__ SyncTask ;


 int commit_repo (TYPE_2__*) ;
 int seaf_timer_free (int *) ;

__attribute__((used)) static int
check_commit_state (void *data)
{
    SyncTask *task = data;

    if (!task->mgr->commit_job_running) {
        seaf_timer_free (&task->commit_timer);
        commit_repo (task);
        return 0;
    }

    return 1;
}
