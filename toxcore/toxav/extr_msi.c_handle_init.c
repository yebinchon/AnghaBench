
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_11__ ;


struct TYPE_15__ {int state; int error; int friend_number; TYPE_11__* session; int self_capabilities; int peer_capabilities; } ;
struct TYPE_13__ {int exists; int value; } ;
struct TYPE_14__ {TYPE_1__ capabilities; } ;
struct TYPE_12__ {int messenger; } ;
typedef TYPE_2__ MSIMessage ;
typedef TYPE_3__ MSICall ;


 int LOGGER_DEBUG (char*,TYPE_11__*,int ) ;
 int LOGGER_INFO (char*) ;
 int LOGGER_WARNING (char*) ;
 int assert (TYPE_3__*) ;
 int invoke_callback (TYPE_3__*,int ) ;
 int kill_call (TYPE_3__*) ;
 int msg_init (TYPE_2__*,int ) ;


 int msi_CallRequested ;
 int msi_EInvalidMessage ;
 int msi_EInvalidState ;
 int msi_OnInvite ;
 int requ_push ;
 int send_error (int ,int ,int ) ;
 int send_message (int ,int ,TYPE_2__*) ;

void handle_init (MSICall *call, const MSIMessage *msg)
{
    assert(call);
    LOGGER_DEBUG("Session: %p Handling 'init' friend: %d", call->session, call->friend_number);

    if (!msg->capabilities.exists) {
        LOGGER_WARNING("Session: %p Invalid capabilities on 'init'");
        call->error = msi_EInvalidMessage;
        goto FAILURE;
    }

    switch (call->state) {
        case 128: {

            call->peer_capabilities = msg->capabilities.value;
            call->state = msi_CallRequested;

            if (invoke_callback(call, msi_OnInvite) == -1)
                goto FAILURE;
        }
        break;

        case 129: {







            LOGGER_INFO("Friend is recalling us");

            MSIMessage msg;
            msg_init(&msg, requ_push);

            msg.capabilities.exists = 1;
            msg.capabilities.value = call->self_capabilities;

            send_message (call->session->messenger, call->friend_number, &msg);




        }
        break;

        default: {
            LOGGER_WARNING("Session: %p Invalid state on 'init'");
            call->error = msi_EInvalidState;
            goto FAILURE;
        }
        break;
    }

    return;
FAILURE:
    send_error(call->session->messenger, call->friend_number, call->error);
    kill_call(call);
}
