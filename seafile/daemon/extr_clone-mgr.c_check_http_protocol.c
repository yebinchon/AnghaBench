
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int http_tx_mgr; } ;
struct TYPE_7__ {int server_url; } ;
typedef TYPE_1__ CloneTask ;


 int CLONE_STATE_CHECK_SERVER ;
 int FALSE ;
 int SYNC_ERROR_ID_NOT_ENOUGH_MEMORY ;
 int check_http_protocol_done ;
 scalar_t__ http_tx_manager_check_protocol_version (int ,int ,int ,int ,TYPE_1__*) ;
 TYPE_4__* seaf ;
 int transition_state (TYPE_1__*,int ) ;
 int transition_to_error (TYPE_1__*,int ) ;

__attribute__((used)) static void
check_http_protocol (CloneTask *task)
{
    if (http_tx_manager_check_protocol_version (seaf->http_tx_mgr,
                                                task->server_url,
                                                FALSE,
                                                check_http_protocol_done,
                                                task) < 0) {
        transition_to_error (task, SYNC_ERROR_ID_NOT_ENOUGH_MEMORY);
        return;
    }

    transition_state (task, CLONE_STATE_CHECK_SERVER);
}
