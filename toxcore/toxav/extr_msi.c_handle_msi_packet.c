
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_10__ {int value; } ;
struct TYPE_12__ {TYPE_1__ request; } ;
struct TYPE_11__ {int mutex; } ;
typedef int Messenger ;
typedef TYPE_2__ MSISession ;
typedef TYPE_3__ MSIMessage ;
typedef int MSICall ;


 int LOGGER_DEBUG (char*) ;
 int LOGGER_WARNING (char*) ;
 int * get_call (TYPE_2__*,int ) ;
 int handle_init (int *,TYPE_3__*) ;
 int handle_pop (int *,TYPE_3__*) ;
 int handle_push (int *,TYPE_3__*) ;
 int msg_parse_in (TYPE_3__*,int const*,int ) ;
 int msi_EInvalidMessage ;
 int msi_EStrayMessage ;
 int msi_ESystem ;
 int * new_call (TYPE_2__*,int ) ;
 int pthread_mutex_lock (int ) ;
 int pthread_mutex_unlock (int ) ;



 int send_error (int *,int ,int ) ;

void handle_msi_packet (Messenger *m, uint32_t friend_number, const uint8_t *data, uint16_t length, void *object)
{
    LOGGER_DEBUG("Got msi message");

    MSISession *session = object;
    MSIMessage msg;

    if (msg_parse_in (&msg, data, length) == -1) {
        LOGGER_WARNING("Error parsing message");
        send_error(m, friend_number, msi_EInvalidMessage);
        return;
    } else {
        LOGGER_DEBUG("Successfully parsed message");
    }

    pthread_mutex_lock(session->mutex);
    MSICall *call = get_call(session, friend_number);

    if (call == ((void*)0)) {
        if (msg.request.value != 130) {
            send_error(m, friend_number, msi_EStrayMessage);
            pthread_mutex_unlock(session->mutex);
            return;
        }

        call = new_call(session, friend_number);

        if (call == ((void*)0)) {
            send_error(m, friend_number, msi_ESystem);
            pthread_mutex_unlock(session->mutex);
            return;
        }
    }

    switch (msg.request.value) {
        case 130:
            handle_init(call, &msg);
            break;

        case 128:
            handle_push(call, &msg);
            break;

        case 129:
            handle_pop(call, &msg);
            break;
    }

    pthread_mutex_unlock(session->mutex);
}
