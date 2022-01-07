
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {float new_position; } ;
struct TYPE_6__ {TYPE_1__ media_player_position_changed; } ;
struct TYPE_7__ {int type; TYPE_2__ u; } ;
typedef TYPE_3__ libvlc_event_t ;


 double VLC_THUMBNAIL_POSITION ;
 int assert (int ) ;
 int done ;


 int lock ;
 int pthread_cond_signal (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int wait ;

__attribute__((used)) static void callback(const libvlc_event_t *ev, void *param)
{
    float new_position;
    (void)param;

    pthread_mutex_lock(&lock);
    switch (ev->type) {
    case 129:
        new_position = ev->u.media_player_position_changed.new_position;
        if (new_position < VLC_THUMBNAIL_POSITION * .9 )
            break;
    case 128:
        done = 1;
        pthread_cond_signal(&wait);
        break;

    default:
        assert(0);
    }
    pthread_mutex_unlock(&lock);
}
