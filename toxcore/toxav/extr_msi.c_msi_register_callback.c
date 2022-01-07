
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int msi_action_cb ;
struct TYPE_3__ {int mutex; int ** callbacks; } ;
typedef TYPE_1__ MSISession ;
typedef size_t MSICallbackID ;


 int pthread_mutex_lock (int ) ;
 int pthread_mutex_unlock (int ) ;

void msi_register_callback (MSISession *session, msi_action_cb *callback, MSICallbackID id)
{
    if (!session)
        return;

    pthread_mutex_lock(session->mutex);
    session->callbacks[id] = callback;
    pthread_mutex_unlock(session->mutex);
}
