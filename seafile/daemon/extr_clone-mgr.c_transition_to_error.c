
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t state; int error; int repo_id; } ;
typedef TYPE_1__ CloneTask ;


 size_t CLONE_STATE_ERROR ;
 int seaf_message (char*,int ,int ,int ) ;
 int * state_str ;
 int sync_error_id_to_str (int) ;

__attribute__((used)) static void
transition_to_error (CloneTask *task, int error)
{
    seaf_message ("Transition clone state for %.8s from [%s] to [error]: %s.\n",
                  task->repo_id,
                  state_str[task->state],
                  sync_error_id_to_str(error));

    task->state = CLONE_STATE_ERROR;
    task->error = error;
}
