
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vout_window_t ;
struct TYPE_5__ {void* sys; int * cbs; } ;
typedef TYPE_1__ vout_window_owner_t ;
struct TYPE_6__ {int is_decorated; int height; int width; } ;
typedef TYPE_2__ vout_window_cfg_t ;
typedef int vout_display_cfg_t ;
typedef int vlc_object_t ;
typedef int video_format_t ;


 int vlc_vidsplit_window_cbs ;
 int vout_display_GetDefaultDisplaySize (int *,int *,int const*,int const*) ;
 int vout_window_Delete (int *) ;
 scalar_t__ vout_window_Enable (int *,TYPE_2__*) ;
 int * vout_window_New (int *,int *,TYPE_1__*) ;

__attribute__((used)) static vout_window_t *video_splitter_CreateWindow(vlc_object_t *obj,
    const vout_display_cfg_t *restrict vdcfg,
    const video_format_t *restrict source, void *sys)
{
    vout_window_cfg_t cfg = {
        .is_decorated = 1,
    };
    vout_window_owner_t owner = {
        .cbs = &vlc_vidsplit_window_cbs,
        .sys = sys,
    };

    vout_display_GetDefaultDisplaySize(&cfg.width, &cfg.height, source,
                                       vdcfg);

    vout_window_t *window = vout_window_New(obj, ((void*)0), &owner);
    if (window != ((void*)0)) {
        if (vout_window_Enable(window, &cfg)) {
            vout_window_Delete(window);
            window = ((void*)0);
        }
    }
    return window;
}
