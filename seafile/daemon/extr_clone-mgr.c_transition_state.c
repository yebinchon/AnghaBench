
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t state; int repo_id; int manager; } ;
typedef TYPE_1__ CloneTask ;


 int CLONE_STATE_CANCELED ;
 int CLONE_STATE_DONE ;
 int remove_task_from_db (int ,int ) ;
 int seaf_message (char*,int ,int ,int ) ;
 int * state_str ;

__attribute__((used)) static void
transition_state (CloneTask *task, int new_state)
{
    seaf_message ("Transition clone state for %.8s from [%s] to [%s].\n",
                  task->repo_id,
                  state_str[task->state], state_str[new_state]);

    if (new_state == CLONE_STATE_DONE ||
        new_state == CLONE_STATE_CANCELED) {

        remove_task_from_db (task->manager, task->repo_id);
    }

    task->state = new_state;
}
