
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ request_count; int lock; int wait; TYPE_2__* picture; } ;
typedef TYPE_1__ vout_snapshot_t ;
typedef int video_format_t ;
struct TYPE_8__ {struct TYPE_8__* p_next; int format; } ;
typedef TYPE_2__ picture_t ;


 TYPE_2__* picture_Clone (TYPE_2__*) ;
 int video_format_CopyCrop (int *,int const*) ;
 int vlc_cond_broadcast (int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

void vout_snapshot_Set(vout_snapshot_t *snap,
                       const video_format_t *fmt,
                       picture_t *picture)
{
    if (snap == ((void*)0))
        return;

    if (!fmt)
        fmt = &picture->format;

    vlc_mutex_lock(&snap->lock);
    while (snap->request_count > 0) {
        picture_t *dup = picture_Clone(picture);
        if (!dup)
            break;

        video_format_CopyCrop( &dup->format, fmt );

        dup->p_next = snap->picture;
        snap->picture = dup;
        snap->request_count--;
    }
    vlc_cond_broadcast(&snap->wait);
    vlc_mutex_unlock(&snap->lock);
}
