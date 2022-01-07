
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int lock; int wait; TYPE_2__* picture; } ;
typedef TYPE_1__ vout_snapshot_t ;
struct TYPE_7__ {struct TYPE_7__* p_next; } ;
typedef TYPE_2__ picture_t ;


 int free (TYPE_1__*) ;
 int picture_Release (TYPE_2__*) ;
 int vlc_cond_destroy (int *) ;
 int vlc_mutex_destroy (int *) ;

void vout_snapshot_Destroy(vout_snapshot_t *snap)
{
    if (snap == ((void*)0))
        return;

    picture_t *picture = snap->picture;
    while (picture) {
        picture_t *next = picture->p_next;
        picture_Release(picture);
        picture = next;
    }

    vlc_cond_destroy(&snap->wait);
    vlc_mutex_destroy(&snap->lock);
    free(snap);
}
