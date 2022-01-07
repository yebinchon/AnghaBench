
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct Messenger {int dummy; } ;
struct TYPE_10__ {struct TYPE_10__* next; int friend_number; } ;
struct TYPE_9__ {int mutex; scalar_t__ messenger; int calls_head; scalar_t__ calls; } ;
typedef TYPE_1__ MSISession ;
typedef int MSIMessage ;
typedef TYPE_2__ MSICall ;


 int LOGGER_DEBUG (char*,TYPE_1__*) ;
 int LOGGER_ERROR (char*) ;
 int free (TYPE_1__*) ;
 TYPE_2__* get_call (TYPE_1__*,int ) ;
 int kill_call (TYPE_2__*) ;
 int m_callback_msi_packet (struct Messenger*,int *,int *) ;
 int msg_init (int *,int ) ;
 int pthread_mutex_destroy (int ) ;
 scalar_t__ pthread_mutex_trylock (int ) ;
 int pthread_mutex_unlock (int ) ;
 int requ_pop ;
 int send_message (scalar_t__,int ,int *) ;

int msi_kill (MSISession *session)
{
    if (session == ((void*)0)) {
        LOGGER_ERROR("Tried to terminate non-existing session");
        return -1;
    }

    m_callback_msi_packet((struct Messenger *) session->messenger, ((void*)0), ((void*)0));

    if (pthread_mutex_trylock(session->mutex) != 0) {
        LOGGER_ERROR ("Failed to aquire lock on msi mutex");
        return -1;
    }

    if (session->calls) {
        MSIMessage msg;
        msg_init(&msg, requ_pop);

        MSICall *it = get_call(session, session->calls_head);

        while (it) {
            send_message(session->messenger, it->friend_number, &msg);
            MSICall *temp_it = it;
            it = it->next;
            kill_call(temp_it);
        }
    }

    pthread_mutex_unlock(session->mutex);
    pthread_mutex_destroy(session->mutex);

    LOGGER_DEBUG("Terminated session: %p", session);
    free (session);
    return 0;
}
