
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* sys; } ;
typedef TYPE_1__ vout_display_t ;
struct TYPE_9__ {int i_output; int fmt; int p_module; } ;
struct TYPE_8__ {TYPE_5__ splitter; int lock; struct vlc_vidsplit_part* parts; } ;
typedef TYPE_2__ vout_display_sys_t ;
struct vlc_vidsplit_part {int lock; int window; TYPE_1__* display; } ;


 int module_unneed (TYPE_5__*,int ) ;
 int video_format_Clean (int *) ;
 int vlc_mutex_destroy (int *) ;
 int vlc_object_delete (TYPE_5__*) ;
 int vlc_sem_destroy (int *) ;
 int vlc_sem_post (int *) ;
 int vlc_sem_wait (int *) ;
 int vout_display_Delete (TYPE_1__*) ;
 int vout_window_Delete (int ) ;
 int vout_window_Disable (int ) ;

__attribute__((used)) static void vlc_vidsplit_Close(vout_display_t *vd)
{
    vout_display_sys_t *sys = vd->sys;
    int n = sys->splitter.i_output;

    for (int i = 0; i < n; i++) {
        struct vlc_vidsplit_part *part = &sys->parts[i];
        vout_display_t *display;

        vlc_sem_wait(&part->lock);
        display = part->display;
        part->display = ((void*)0);
        vlc_sem_post(&part->lock);

        if (display != ((void*)0))
            vout_display_Delete(display);

        vout_window_Disable(part->window);
        vout_window_Delete(part->window);
        vlc_sem_destroy(&part->lock);
    }

    module_unneed(&sys->splitter, sys->splitter.p_module);
    video_format_Clean(&sys->splitter.fmt);
    vlc_mutex_destroy(&sys->lock);
    vlc_object_delete(&sys->splitter);
}
