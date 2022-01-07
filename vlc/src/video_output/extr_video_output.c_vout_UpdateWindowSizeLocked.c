
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_3__* p; } ;
typedef TYPE_2__ vout_thread_t ;
struct TYPE_7__ {int window; } ;
struct TYPE_9__ {int display_lock; TYPE_1__ display_cfg; int original; int * display; int window_lock; } ;
typedef TYPE_3__ vout_thread_sys_t ;


 int msg_Dbg (TYPE_2__*,char*,unsigned int,unsigned int) ;
 int vlc_mutex_assert (int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;
 int vout_SizeWindow (TYPE_2__*,int *,unsigned int*,unsigned int*) ;
 int vout_window_SetSize (int ,unsigned int,unsigned int) ;

__attribute__((used)) static void vout_UpdateWindowSizeLocked(vout_thread_t *vout)
{
    vout_thread_sys_t *sys = vout->p;
    unsigned width, height;

    vlc_mutex_assert(&sys->window_lock);

    vlc_mutex_lock(&sys->display_lock);
    if (sys->display != ((void*)0)) {
        vout_SizeWindow(vout, &sys->original, &width, &height);
        vlc_mutex_unlock(&sys->display_lock);

        msg_Dbg(vout, "requested window size: %ux%u", width, height);
        vout_window_SetSize(sys->display_cfg.window, width, height);
    } else
        vlc_mutex_unlock(&sys->display_lock);
}
