
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


typedef scalar_t__ uint64_t ;
typedef scalar_t__ uint32_t ;
typedef scalar_t__ int32_t ;
struct TYPE_14__ {TYPE_6__* second; } ;
struct TYPE_12__ {TYPE_10__* second; } ;
struct TYPE_15__ {scalar_t__ friend_number; int mutex; TYPE_3__ video; TYPE_2__* msi_call; TYPE_1__ audio; scalar_t__ active; struct TYPE_15__* next; } ;
typedef TYPE_4__ ToxAVCall ;
struct TYPE_16__ {size_t calls_head; scalar_t__ dmssa; int dmsst; int dmssc; scalar_t__ interval; int mutex; TYPE_4__** calls; } ;
typedef TYPE_5__ ToxAV ;
struct TYPE_17__ {int lcfd; } ;
struct TYPE_13__ {int self_capabilities; int peer_capabilities; } ;
struct TYPE_11__ {int lp_frame_duration; } ;


 scalar_t__ MIN (int ,scalar_t__) ;
 int ac_iterate (TYPE_10__*) ;
 TYPE_4__* call_get (TYPE_5__*,scalar_t__) ;
 scalar_t__ current_time_monotonic () ;
 int msi_CapRAudio ;
 int msi_CapRVideo ;
 int msi_CapSAudio ;
 int msi_CapSVideo ;
 int pthread_mutex_lock (int ) ;
 int pthread_mutex_unlock (int ) ;
 int vc_iterate (TYPE_6__*) ;

void toxav_iterate(ToxAV *av)
{
    pthread_mutex_lock(av->mutex);

    if (av->calls == ((void*)0)) {
        pthread_mutex_unlock(av->mutex);
        return;
    }

    uint64_t start = current_time_monotonic();
    int32_t rc = 500;

    ToxAVCall *i = av->calls[av->calls_head];

    for (; i; i = i->next) {
        if (i->active) {
            pthread_mutex_lock(i->mutex);
            pthread_mutex_unlock(av->mutex);

            ac_iterate(i->audio.second);
            vc_iterate(i->video.second);

            if (i->msi_call->self_capabilities & msi_CapRAudio &&
                    i->msi_call->peer_capabilities & msi_CapSAudio)
                rc = MIN(i->audio.second->lp_frame_duration, rc);

            if (i->msi_call->self_capabilities & msi_CapRVideo &&
                    i->msi_call->peer_capabilities & msi_CapSVideo)
                rc = MIN(i->video.second->lcfd, (uint32_t) rc);

            uint32_t fid = i->friend_number;

            pthread_mutex_unlock(i->mutex);
            pthread_mutex_lock(av->mutex);


            if (call_get(av, fid) != i)
                break;
        }
    }

    pthread_mutex_unlock(av->mutex);

    av->interval = rc < av->dmssa ? 0 : (rc - av->dmssa);
    av->dmsst += current_time_monotonic() - start;

    if (++av->dmssc == 3) {
        av->dmssa = av->dmsst / 3 + 5 ;
        av->dmssc = 0;
        av->dmsst = 0;
    }
}
