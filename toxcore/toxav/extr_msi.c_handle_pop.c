
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int state; int error; int friend_number; int session; } ;
struct TYPE_9__ {int value; scalar_t__ exists; } ;
struct TYPE_10__ {TYPE_1__ error; } ;
typedef TYPE_2__ MSIMessage ;
typedef TYPE_3__ MSICall ;


 int LOGGER_DEBUG (char*,int ,int ) ;
 int LOGGER_ERROR (char*) ;
 int LOGGER_INFO (char*) ;
 int LOGGER_WARNING (char*,int ) ;
 int abort () ;
 int assert (TYPE_3__*) ;
 int invoke_callback (TYPE_3__*,int ) ;
 int kill_call (TYPE_3__*) ;




 int msi_OnEnd ;
 int msi_OnError ;

void handle_pop (MSICall *call, const MSIMessage *msg)
{
    assert(call);

    LOGGER_DEBUG("Session: %p Handling 'pop', friend id: %d", call->session, call->friend_number);



    if (msg->error.exists) {
        LOGGER_WARNING("Friend detected an error: %d", msg->error.value);
        call->error = msg->error.value;
        invoke_callback(call, msi_OnError);

    } else switch (call->state) {
            case 130: {
                LOGGER_ERROR("Handling what should be impossible case");
                abort();
            }
            break;

            case 131: {

                LOGGER_INFO("Friend hung up on us");
                invoke_callback(call, msi_OnEnd);
            }
            break;

            case 128: {

                LOGGER_INFO("Friend rejected our call");
                invoke_callback(call, msi_OnEnd);
            }
            break;

            case 129: {

                LOGGER_INFO("Friend canceled call invite");
                invoke_callback(call, msi_OnEnd);
            }
            break;
        }

    kill_call (call);
}
