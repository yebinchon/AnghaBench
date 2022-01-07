
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {TYPE_4__* msi_call; } ;
typedef TYPE_2__ ToxAVCall ;
struct TYPE_9__ {int second; int (* first ) (TYPE_3__*,int ,int,int,int ) ;} ;
struct TYPE_11__ {int mutex; TYPE_1__ ccb; } ;
typedef TYPE_3__ ToxAV ;
struct TYPE_12__ {int peer_capabilities; int friend_number; TYPE_2__* av_call; } ;
typedef TYPE_4__ MSICall ;


 int LOGGER_WARNING (char*) ;
 TYPE_2__* call_new (TYPE_3__*,int ,int *) ;
 int msi_CapSAudio ;
 int msi_CapSVideo ;
 int pthread_mutex_lock (int ) ;
 int pthread_mutex_unlock (int ) ;
 int stub1 (TYPE_3__*,int ,int,int,int ) ;

int callback_invite(void *toxav_inst, MSICall *call)
{
    ToxAV *toxav = toxav_inst;
    pthread_mutex_lock(toxav->mutex);

    ToxAVCall *av_call = call_new(toxav, call->friend_number, ((void*)0));

    if (av_call == ((void*)0)) {
        LOGGER_WARNING("Failed to initialize call...");
        pthread_mutex_unlock(toxav->mutex);
        return -1;
    }

    call->av_call = av_call;
    av_call->msi_call = call;

    if (toxav->ccb.first)
        toxav->ccb.first(toxav, call->friend_number, call->peer_capabilities & msi_CapSAudio,
                         call->peer_capabilities & msi_CapSVideo, toxav->ccb.second);
    else {

        pthread_mutex_unlock(toxav->mutex);
        return -1;
    }

    pthread_mutex_unlock(toxav->mutex);
    return 0;
}
