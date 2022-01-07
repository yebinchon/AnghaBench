
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef void* uint8_t ;
typedef int uint32_t ;
struct TYPE_17__ {int state; int friend_number; TYPE_2__* session; void* self_capabilities; } ;
struct TYPE_13__ {int exists; void* value; } ;
struct TYPE_16__ {TYPE_1__ capabilities; } ;
struct TYPE_15__ {int mutex; } ;
struct TYPE_14__ {int messenger; } ;
typedef TYPE_3__ MSISession ;
typedef TYPE_4__ MSIMessage ;
typedef TYPE_5__ MSICall ;


 int LOGGER_DEBUG (char*,...) ;
 int LOGGER_ERROR (char*) ;
 int * get_call (TYPE_3__*,int ) ;
 int msg_init (TYPE_4__*,int ) ;
 int msi_CallRequesting ;
 TYPE_5__* new_call (TYPE_3__*,int ) ;
 scalar_t__ pthread_mutex_trylock (int ) ;
 int pthread_mutex_unlock (int ) ;
 int requ_init ;
 int send_message (int ,int ,TYPE_4__*) ;

int msi_invite (MSISession *session, MSICall **call, uint32_t friend_number, uint8_t capabilities)
{
    if (!session)
        return -1;

    LOGGER_DEBUG("Session: %p Inviting friend: %u", session, friend_number);

    if (pthread_mutex_trylock(session->mutex) != 0) {
        LOGGER_ERROR ("Failed to aquire lock on msi mutex");
        return -1;
    }

    if (get_call(session, friend_number) != ((void*)0)) {
        LOGGER_ERROR("Already in a call");
        pthread_mutex_unlock(session->mutex);
        return -1;
    }

    (*call) = new_call (session, friend_number);

    if (*call == ((void*)0)) {
        pthread_mutex_unlock(session->mutex);
        return -1;
    }

    (*call)->self_capabilities = capabilities;

    MSIMessage msg;
    msg_init(&msg, requ_init);

    msg.capabilities.exists = 1;
    msg.capabilities.value = capabilities;

    send_message ((*call)->session->messenger, (*call)->friend_number, &msg);

    (*call)->state = msi_CallRequesting;

    LOGGER_DEBUG("Invite sent");
    pthread_mutex_unlock(session->mutex);
    return 0;
}
