
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int repo_mgr; } ;
struct TYPE_5__ {int state; int runtime_state; scalar_t__ type; int repo_id; } ;
typedef TYPE_1__ HttpTxTask ;


 int EMPTY_SHA1 ;
 int HTTP_TASK_RT_STATE_FINISHED ;
 int HTTP_TASK_STATE_FINISHED ;
 scalar_t__ HTTP_TASK_TYPE_DOWNLOAD ;
 int REPO_PROP_DOWNLOAD_HEAD ;
 int emit_transfer_done_signal (TYPE_1__*) ;
 int http_task_rt_state_to_str (int) ;
 int http_task_state_to_str (int) ;
 TYPE_3__* seaf ;
 int seaf_message (char*,int ,int ,int ,int ,int ) ;
 int seaf_repo_manager_set_repo_property (int ,int ,int ,int ) ;

__attribute__((used)) static void
transition_state (HttpTxTask *task, int state, int rt_state)
{
    seaf_message ("Transfer repo '%.8s': ('%s', '%s') --> ('%s', '%s')\n",
                  task->repo_id,
                  http_task_state_to_str(task->state),
                  http_task_rt_state_to_str(task->runtime_state),
                  http_task_state_to_str(state),
                  http_task_rt_state_to_str(rt_state));

    if (state != task->state)
        task->state = state;
    task->runtime_state = rt_state;

    if (rt_state == HTTP_TASK_RT_STATE_FINISHED) {

        if (task->type == HTTP_TASK_TYPE_DOWNLOAD &&
            state == HTTP_TASK_STATE_FINISHED)
            seaf_repo_manager_set_repo_property (seaf->repo_mgr,
                                                 task->repo_id,
                                                 REPO_PROP_DOWNLOAD_HEAD,
                                                 EMPTY_SHA1);

        emit_transfer_done_signal (task);
    }
}
