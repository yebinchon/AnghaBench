
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int toxav_call_state_cb ;
struct TYPE_4__ {void* second; int * first; } ;
struct TYPE_5__ {int mutex; TYPE_1__ scb; } ;
typedef TYPE_2__ ToxAV ;


 int pthread_mutex_lock (int ) ;
 int pthread_mutex_unlock (int ) ;

void toxav_callback_call_state(ToxAV *av, toxav_call_state_cb *function, void *user_data)
{
    pthread_mutex_lock(av->mutex);
    av->scb.first = function;
    av->scb.second = user_data;
    pthread_mutex_unlock(av->mutex);
}
