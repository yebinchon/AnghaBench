
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ state; int friend_number; TYPE_1__* session; } ;
struct TYPE_6__ {int mutex; int messenger; } ;
typedef TYPE_1__ MSISession ;
typedef int MSIMessage ;
typedef TYPE_2__ MSICall ;


 int LOGGER_DEBUG (char*,TYPE_1__*,int ) ;
 int LOGGER_ERROR (char*) ;
 int kill_call (TYPE_2__*) ;
 int msg_init (int *,int ) ;
 scalar_t__ msi_CallInactive ;
 scalar_t__ pthread_mutex_trylock (int ) ;
 int pthread_mutex_unlock (int ) ;
 int requ_pop ;
 int send_message (int ,int ,int *) ;

int msi_hangup (MSICall *call)
{
    if (!call || !call->session)
        return -1;

    LOGGER_DEBUG("Session: %p Hanging up call with friend: %u", call->session, call->friend_number);

    MSISession *session = call->session;

    if (pthread_mutex_trylock(session->mutex) != 0) {
        LOGGER_ERROR ("Failed to aquire lock on msi mutex");
        return -1;
    }

    if (call->state == msi_CallInactive) {
        LOGGER_ERROR("Call is in invalid state!");
        pthread_mutex_unlock(session->mutex);
        return -1;
    }

    MSIMessage msg;
    msg_init(&msg, requ_pop);

    send_message (session->messenger, call->friend_number, &msg);

    kill_call(call);
    pthread_mutex_unlock(session->mutex);
    return 0;
}
