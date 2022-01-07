
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_3__* p; } ;
typedef TYPE_2__ vout_thread_t ;
struct TYPE_5__ {int window; } ;
struct TYPE_7__ {int window_enabled; int window_lock; TYPE_1__ display_cfg; int * dec_device; } ;
typedef TYPE_3__ vout_thread_sys_t ;


 int vlc_decoder_device_Release (int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;
 int vout_window_Disable (int ) ;

__attribute__((used)) static void vout_DisableWindow(vout_thread_t *vout)
{
    vout_thread_sys_t *sys = vout->p;
    vlc_mutex_lock(&sys->window_lock);
    if (sys->dec_device)
    {
        vlc_decoder_device_Release(sys->dec_device);
        sys->dec_device = ((void*)0);
    }
    if (sys->window_enabled) {
        vout_window_Disable(sys->display_cfg.window);
        sys->window_enabled = 0;
    }
    vlc_mutex_unlock(&sys->window_lock);
}
