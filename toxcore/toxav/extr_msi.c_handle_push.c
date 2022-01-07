
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_9__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {int messenger; } ;
struct TYPE_12__ {int state; int error; int friend_number; TYPE_9__* session; int peer_capabilities; } ;
struct TYPE_10__ {int value; int exists; } ;
struct TYPE_11__ {TYPE_1__ capabilities; } ;
typedef TYPE_2__ MSIMessage ;
typedef TYPE_3__ MSICall ;


 int LOGGER_DEBUG (char*,TYPE_9__*,int ) ;
 int LOGGER_INFO (char*,...) ;
 int LOGGER_WARNING (char*) ;
 int assert (TYPE_3__*) ;
 int invoke_callback (TYPE_3__*,int ) ;
 int kill_call (TYPE_3__*) ;




 int msi_EInvalidMessage ;
 int msi_OnCapabilities ;
 int msi_OnStart ;
 int send_error (int ,int ,int ) ;

void handle_push (MSICall *call, const MSIMessage *msg)
{
    assert(call);

    LOGGER_DEBUG("Session: %p Handling 'push' friend: %d", call->session, call->friend_number);

    if (!msg->capabilities.exists) {
        LOGGER_WARNING("Session: %p Invalid capabilities on 'push'");
        call->error = msi_EInvalidMessage;
        goto FAILURE;
    }

    switch (call->state) {
        case 131: {

            if (call->peer_capabilities != msg->capabilities.value) {
                LOGGER_INFO("Friend is changing capabilities to: %u", msg->capabilities.value);

                call->peer_capabilities = msg->capabilities.value;

                if (invoke_callback(call, msi_OnCapabilities) == -1)
                    goto FAILURE;
            }
        }
        break;

        case 128: {
            LOGGER_INFO("Friend answered our call");


            call->peer_capabilities = msg->capabilities.value;
            call->state = 131;

            if (invoke_callback(call, msi_OnStart) == -1)
                goto FAILURE;

        }
        break;


        case 130:
        case 129: {
            LOGGER_WARNING("Ignoring invalid push");
        }
        break;
    }

    return;

FAILURE:
    send_error(call->session->messenger, call->friend_number, call->error);
    kill_call(call);
}
