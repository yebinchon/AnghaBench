
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef void* uint8_t ;
struct TYPE_12__ {scalar_t__ state; int friend_number; TYPE_2__* session; void* self_capabilities; } ;
struct TYPE_9__ {int exists; void* value; } ;
struct TYPE_11__ {TYPE_1__ capabilities; } ;
struct TYPE_10__ {int mutex; int messenger; } ;
typedef TYPE_2__ MSISession ;
typedef TYPE_3__ MSIMessage ;
typedef TYPE_4__ MSICall ;


 int LOGGER_DEBUG (char*,TYPE_2__*,int ) ;
 int LOGGER_ERROR (char*) ;
 int msg_init (TYPE_3__*,int ) ;
 scalar_t__ msi_CallActive ;
 scalar_t__ pthread_mutex_trylock (int ) ;
 int pthread_mutex_unlock (int ) ;
 int requ_push ;
 int send_message (int ,int ,TYPE_3__*) ;

int msi_change_capabilities(MSICall *call, uint8_t capabilities)
{
    if (!call || !call->session)
        return -1;

    LOGGER_DEBUG("Session: %p Trying to change capabilities to friend %u", call->session, call->friend_number);

    MSISession *session = call->session;

    if (pthread_mutex_trylock(session->mutex) != 0) {
        LOGGER_ERROR ("Failed to aquire lock on msi mutex");
        return -1;
    }

    if (call->state != msi_CallActive) {
        LOGGER_ERROR("Call is in invalid state!");
        pthread_mutex_unlock(session->mutex);
        return -1;
    }

    call->self_capabilities = capabilities;

    MSIMessage msg;
    msg_init(&msg, requ_push);

    msg.capabilities.exists = 1;
    msg.capabilities.value = capabilities;

    send_message (call->session->messenger, call->friend_number, &msg);

    pthread_mutex_unlock(session->mutex);
    return 0;
}
