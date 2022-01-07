
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int mutex; } ;
typedef TYPE_1__ ToxAV ;
struct TYPE_6__ {scalar_t__ av_call; int friend_number; } ;
typedef TYPE_2__ MSICall ;


 int TOXAV_FRIEND_CALL_STATE_ERROR ;
 int call_kill_transmission (scalar_t__) ;
 int call_remove (scalar_t__) ;
 int invoke_call_state_callback (TYPE_1__*,int ,int ) ;
 int pthread_mutex_lock (int ) ;
 int pthread_mutex_unlock (int ) ;

int callback_error(void *toxav_inst, MSICall *call)
{
    ToxAV *toxav = toxav_inst;
    pthread_mutex_lock(toxav->mutex);

    invoke_call_state_callback(toxav, call->friend_number, TOXAV_FRIEND_CALL_STATE_ERROR);

    if (call->av_call) {
        call_kill_transmission(call->av_call);
        call_remove(call->av_call);
    }

    pthread_mutex_unlock(toxav->mutex);
    return 0;
}
