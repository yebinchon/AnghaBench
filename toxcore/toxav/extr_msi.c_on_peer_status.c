
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_3__ {int mutex; } ;
typedef int Messenger ;
typedef TYPE_1__ MSISession ;
typedef int MSICall ;


 int LOGGER_DEBUG (char*,int ) ;
 int * get_call (TYPE_1__*,int ) ;
 int invoke_callback (int *,int ) ;
 int kill_call (int *) ;
 int msi_OnPeerTimeout ;
 int pthread_mutex_lock (int ) ;
 int pthread_mutex_unlock (int ) ;

void on_peer_status(Messenger *m, uint32_t friend_number, uint8_t status, void *data)
{
    (void)m;
    MSISession *session = data;

    switch (status) {
        case 0: {
            LOGGER_DEBUG("Friend %d is now offline", friend_number);

            pthread_mutex_lock(session->mutex);
            MSICall *call = get_call(session, friend_number);

            if (call == ((void*)0)) {
                pthread_mutex_unlock(session->mutex);
                return;
            }

            invoke_callback(call, msi_OnPeerTimeout);
            kill_call(call);
            pthread_mutex_unlock(session->mutex);
        }
        break;

        default:
            break;
    }
}
