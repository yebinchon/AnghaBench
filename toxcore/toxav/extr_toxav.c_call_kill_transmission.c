
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * second; int * first; } ;
struct TYPE_5__ {int * second; int * first; } ;
struct TYPE_7__ {scalar_t__ active; int mutex; int mutex_video; int mutex_audio; TYPE_2__ video; TYPE_1__ audio; int bwc; } ;
typedef TYPE_3__ ToxAVCall ;


 int ac_kill (int *) ;
 int bwc_kill (int ) ;
 int pthread_mutex_destroy (int ) ;
 int pthread_mutex_lock (int ) ;
 int pthread_mutex_unlock (int ) ;
 int rtp_kill (int *) ;
 int vc_kill (int *) ;

void call_kill_transmission(ToxAVCall *call)
{
    if (call == ((void*)0) || call->active == 0)
        return;

    call->active = 0;

    pthread_mutex_lock(call->mutex_audio);
    pthread_mutex_unlock(call->mutex_audio);
    pthread_mutex_lock(call->mutex_video);
    pthread_mutex_unlock(call->mutex_video);
    pthread_mutex_lock(call->mutex);
    pthread_mutex_unlock(call->mutex);

    bwc_kill(call->bwc);

    rtp_kill(call->audio.first);
    ac_kill(call->audio.second);
    call->audio.first = ((void*)0);
    call->audio.second = ((void*)0);

    rtp_kill(call->video.first);
    vc_kill(call->video.second);
    call->video.first = ((void*)0);
    call->video.second = ((void*)0);

    pthread_mutex_destroy(call->mutex_audio);
    pthread_mutex_destroy(call->mutex_video);
    pthread_mutex_destroy(call->mutex);
}
