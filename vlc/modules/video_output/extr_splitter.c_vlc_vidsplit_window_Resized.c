
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct vlc_vidsplit_part* sys; } ;
struct TYPE_5__ {TYPE_1__ owner; } ;
typedef TYPE_2__ vout_window_t ;
struct vlc_vidsplit_part {unsigned int width; unsigned int height; int lock; int * display; } ;


 int vlc_sem_post (int *) ;
 int vlc_sem_wait (int *) ;
 int vout_display_SetSize (int *,unsigned int,unsigned int) ;

__attribute__((used)) static void vlc_vidsplit_window_Resized(vout_window_t *wnd,
                                        unsigned width, unsigned height)
{
    struct vlc_vidsplit_part *part = wnd->owner.sys;

    vlc_sem_wait(&part->lock);
    part->width = width;
    part->height = height;

    if (part->display != ((void*)0))
        vout_display_SetSize(part->display, width, height);
    vlc_sem_post(&part->lock);
}
