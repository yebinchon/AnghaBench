
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct vlc_vidsplit_part* sys; } ;
struct TYPE_5__ {TYPE_1__ owner; } ;
typedef TYPE_2__ vout_window_t ;
typedef int vout_display_t ;
struct vlc_vidsplit_part {int lock; int * display; } ;


 int vlc_sem_post (int *) ;
 int vlc_sem_wait (int *) ;
 int vout_display_Delete (int *) ;

__attribute__((used)) static void vlc_vidsplit_window_Closed(vout_window_t *wnd)
{
    struct vlc_vidsplit_part *part = wnd->owner.sys;
    vout_display_t *display;

    vlc_sem_wait(&part->lock);
    display = part->display;
    part->display = ((void*)0);
    vlc_sem_post(&part->lock);

    if (display != ((void*)0))
        vout_display_Delete(display);
}
