
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ request_count; int lock; } ;
typedef TYPE_1__ vout_snapshot_t ;


 int vlc_mutex_trylock (int *) ;
 int vlc_mutex_unlock (int *) ;

bool vout_snapshot_IsRequested(vout_snapshot_t *snap)
{
    if (snap == ((void*)0))
        return 0;

    bool has_request = 0;
    if (!vlc_mutex_trylock(&snap->lock)) {
        has_request = snap->request_count > 0;
        vlc_mutex_unlock(&snap->lock);
    }
    return has_request;
}
