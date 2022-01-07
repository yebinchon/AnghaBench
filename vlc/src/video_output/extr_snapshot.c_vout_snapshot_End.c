
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int is_available; int lock; int wait; } ;
typedef TYPE_1__ vout_snapshot_t ;


 int vlc_cond_broadcast (int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

void vout_snapshot_End(vout_snapshot_t *snap)
{
    if (snap == ((void*)0))
        return;

    vlc_mutex_lock(&snap->lock);

    snap->is_available = 0;

    vlc_cond_broadcast(&snap->wait);
    vlc_mutex_unlock(&snap->lock);
}
