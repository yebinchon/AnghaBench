
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ state; int server_head_id; } ;
struct TYPE_7__ {int error_code; int head_commit; int is_deleted; int is_corrupt; scalar_t__ check_success; } ;
typedef TYPE_1__ HttpHeadCommit ;
typedef TYPE_2__ CloneTask ;


 int CLONE_STATE_CANCELED ;
 scalar_t__ CLONE_STATE_CANCEL_PENDING ;
 int memcpy (int ,int ,int) ;
 int start_clone_v2 (TYPE_2__*) ;
 int transition_state (TYPE_2__*,int ) ;
 int transition_to_error (TYPE_2__*,int ) ;

__attribute__((used)) static void
check_head_commit_done (HttpHeadCommit *result, void *user_data)
{
    CloneTask *task = user_data;

    if (task->state == CLONE_STATE_CANCEL_PENDING) {
        transition_state (task, CLONE_STATE_CANCELED);
        return;
    }

    if (result->check_success && !result->is_corrupt && !result->is_deleted) {
        memcpy (task->server_head_id, result->head_commit, 40);
        start_clone_v2 (task);
    } else {
        transition_to_error (task, result->error_code);
    }
}
