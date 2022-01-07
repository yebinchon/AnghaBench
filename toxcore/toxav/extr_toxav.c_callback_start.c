
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int ToxAVCall ;
struct TYPE_7__ {int mutex; } ;
typedef TYPE_1__ ToxAV ;
struct TYPE_8__ {int peer_capabilities; int friend_number; } ;
typedef TYPE_2__ MSICall ;


 int * call_get (TYPE_1__*,int ) ;
 int call_prepare_transmission (int *) ;
 int callback_error (void*,TYPE_2__*) ;
 int invoke_call_state_callback (TYPE_1__*,int ,int ) ;
 int pthread_mutex_lock (int ) ;
 int pthread_mutex_unlock (int ) ;

int callback_start(void *toxav_inst, MSICall *call)
{
    ToxAV *toxav = toxav_inst;
    pthread_mutex_lock(toxav->mutex);

    ToxAVCall *av_call = call_get(toxav, call->friend_number);

    if (av_call == ((void*)0)) {

        pthread_mutex_unlock(toxav->mutex);
        return -1;
    }

    if (!call_prepare_transmission(av_call)) {
        callback_error(toxav_inst, call);
        pthread_mutex_unlock(toxav->mutex);
        return -1;
    }

    if (!invoke_call_state_callback(toxav, call->friend_number, call->peer_capabilities)) {
        callback_error(toxav_inst, call);
        pthread_mutex_unlock(toxav->mutex);
        return -1;
    }

    pthread_mutex_unlock(toxav->mutex);
    return 0;
}
