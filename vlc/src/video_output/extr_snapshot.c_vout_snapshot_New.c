
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int is_available; int * picture; scalar_t__ request_count; int wait; int lock; } ;
typedef TYPE_1__ vout_snapshot_t ;


 TYPE_1__* malloc (int) ;
 scalar_t__ unlikely (int ) ;
 int vlc_cond_init (int *) ;
 int vlc_mutex_init (int *) ;

vout_snapshot_t *vout_snapshot_New(void)
{
    vout_snapshot_t *snap = malloc(sizeof (*snap));
    if (unlikely(snap == ((void*)0)))
        return ((void*)0);

    vlc_mutex_init(&snap->lock);
    vlc_cond_init(&snap->wait);

    snap->is_available = 1;
    snap->request_count = 0;
    snap->picture = ((void*)0);
    return snap;
}
