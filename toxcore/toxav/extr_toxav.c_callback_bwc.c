
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_7__ {int video_bit_rate; int audio_bit_rate; TYPE_3__* av; } ;
typedef TYPE_2__ ToxAVCall ;
struct TYPE_6__ {int second; int (* first ) (TYPE_3__*,int ,float,float,int ) ;} ;
struct TYPE_8__ {int mutex; TYPE_1__ bcb; } ;
typedef int BWController ;


 int LOGGER_DEBUG (char*,float) ;
 int LOGGER_WARNING (char*) ;
 int assert (TYPE_2__*) ;
 int pthread_mutex_lock (int ) ;
 int pthread_mutex_unlock (int ) ;
 int stub1 (TYPE_3__*,int ,int,float,int ) ;
 int stub2 (TYPE_3__*,int ,float,float,int ) ;

void callback_bwc(BWController *bwc, uint32_t friend_number, float loss, void *user_data)
{







    ToxAVCall *call = user_data;
    assert(call);

    LOGGER_DEBUG("Reported loss of %f%%", loss * 100);

    if (loss < .01f)
        return;

    pthread_mutex_lock(call->av->mutex);

    if (!call->av->bcb.first) {
        pthread_mutex_unlock(call->av->mutex);
        LOGGER_WARNING("No callback to report loss on");
        return;
    }

    if (call->video_bit_rate)
        (*call->av->bcb.first) (call->av, friend_number, call->audio_bit_rate,
                                call->video_bit_rate - (call->video_bit_rate * loss),
                                call->av->bcb.second);
    else if (call->audio_bit_rate)
        (*call->av->bcb.first) (call->av, friend_number,
                                call->audio_bit_rate - (call->audio_bit_rate * loss),
                                0, call->av->bcb.second);

    pthread_mutex_unlock(call->av->mutex);
}
