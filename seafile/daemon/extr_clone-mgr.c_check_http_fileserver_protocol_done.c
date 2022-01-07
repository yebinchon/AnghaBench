
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ state; int use_fileserver_port; int server_url; int effective_url; int http_protocol_version; } ;
struct TYPE_7__ {int error_code; int version; int not_supported; scalar_t__ check_success; } ;
typedef TYPE_1__ HttpProtocolVersion ;
typedef TYPE_2__ CloneTask ;


 int CLONE_STATE_CANCELED ;
 scalar_t__ CLONE_STATE_CANCEL_PENDING ;
 int TRUE ;
 int http_check_head_commit (TYPE_2__*) ;
 int http_fileserver_url (int ) ;
 int transition_state (TYPE_2__*,int ) ;
 int transition_to_error (TYPE_2__*,int ) ;

__attribute__((used)) static void
check_http_fileserver_protocol_done (HttpProtocolVersion *result, void *user_data)
{
    CloneTask *task = user_data;

    if (task->state == CLONE_STATE_CANCEL_PENDING) {
        transition_state (task, CLONE_STATE_CANCELED);
        return;
    }

    if (result->check_success && !result->not_supported) {
        task->http_protocol_version = result->version;
        task->effective_url = http_fileserver_url (task->server_url);
        task->use_fileserver_port = TRUE;
        http_check_head_commit (task);
    } else {

        transition_to_error (task, result->error_code);
    }
}
