
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_3__* sys; } ;
typedef TYPE_2__ vout_display_t ;
struct TYPE_5__ {int i_output; } ;
struct TYPE_7__ {int ** pictures; struct vlc_vidsplit_part* parts; TYPE_1__ splitter; } ;
typedef TYPE_3__ vout_display_sys_t ;
struct vlc_vidsplit_part {int lock; int display; } ;
typedef int picture_t ;


 int vlc_sem_post (int *) ;
 int vout_display_Display (int ,int *) ;

__attribute__((used)) static void vlc_vidsplit_Display(vout_display_t *vd, picture_t *picture)
{
    vout_display_sys_t *sys = vd->sys;

    for (int i = 0; i < sys->splitter.i_output; i++) {
        struct vlc_vidsplit_part *part = &sys->parts[i];

        if (sys->pictures[i] != ((void*)0))
            vout_display_Display(part->display, sys->pictures[i]);
        vlc_sem_post(&part->lock);
    }

    (void) picture;
}
