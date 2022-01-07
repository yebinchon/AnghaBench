
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_13__ ;


struct TYPE_15__ {int height; int width; int y; int x; int is_decorated; int is_fullscreen; } ;
typedef TYPE_1__ vout_window_cfg_t ;
struct TYPE_16__ {TYPE_3__* p; } ;
typedef TYPE_2__ vout_thread_t ;
struct TYPE_14__ {int window; } ;
struct TYPE_17__ {int window_enabled; int window_lock; int * dec_device; TYPE_13__ display_cfg; int dummy; } ;
typedef TYPE_3__ vout_thread_sys_t ;
typedef int vlc_decoder_device ;
typedef int video_format_t ;


 int VoutGetDisplayCfg (TYPE_2__*,int const*,TYPE_13__*) ;
 int assert (int) ;
 int msg_Err (TYPE_2__*,char*) ;
 int var_GetBool (TYPE_2__*,char*) ;
 int var_InheritBool (TYPE_2__*,char*) ;
 int var_InheritInteger (TYPE_2__*,char*) ;
 int * vlc_decoder_device_Create (int ) ;
 int * vlc_decoder_device_Hold (int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;
 int vout_SizeWindow (TYPE_2__*,int const*,int *,int *) ;
 int vout_UpdateWindowSizeLocked (TYPE_2__*) ;
 scalar_t__ vout_window_Enable (int ,TYPE_1__*) ;

__attribute__((used)) static int vout_EnableWindow(vout_thread_t *vout, const video_format_t *original,
                             vlc_decoder_device **pp_dec_device)
{
    vout_thread_sys_t *sys = vout->p;

    assert(!sys->dummy);
    assert(vout != ((void*)0));

    vlc_mutex_lock(&sys->window_lock);
    if (!sys->window_enabled) {
        vout_window_cfg_t wcfg = {
            .is_fullscreen = var_GetBool(vout, "fullscreen"),
            .is_decorated = var_InheritBool(vout, "video-deco"),





        };

        VoutGetDisplayCfg(vout, original, &sys->display_cfg);
        vout_SizeWindow(vout, original, &wcfg.width, &wcfg.height);

        if (vout_window_Enable(sys->display_cfg.window, &wcfg)) {
            vlc_mutex_unlock(&sys->window_lock);
            msg_Err(vout, "failed to enable window");
            return -1;
        }
        sys->window_enabled = 1;
    } else
        vout_UpdateWindowSizeLocked(vout);

    if (pp_dec_device)
    {
        if (sys->dec_device == ((void*)0))
            sys->dec_device = vlc_decoder_device_Create(sys->display_cfg.window);
        *pp_dec_device = sys->dec_device ? vlc_decoder_device_Hold( sys->dec_device ) : ((void*)0);
    }
    vlc_mutex_unlock(&sys->window_lock);
    return 0;
}
