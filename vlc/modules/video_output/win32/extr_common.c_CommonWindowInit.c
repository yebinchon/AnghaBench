
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_16__ {int * hvideownd; int * hparent; int event; int dxgidebug_dll; } ;
typedef TYPE_3__ vout_display_sys_win32_t ;
typedef int vlc_object_t ;
struct TYPE_17__ {int * hvideownd; int * hparent; } ;
typedef TYPE_4__ event_hwnd_t ;
struct TYPE_18__ {int is_projected; int height; int width; } ;
typedef TYPE_5__ event_cfg_t ;
struct TYPE_14__ {int height; int width; } ;
struct TYPE_15__ {TYPE_1__ display; int * window; } ;
struct TYPE_19__ {TYPE_2__ vdcfg; } ;
typedef TYPE_6__ display_win32_area_t ;
typedef int cfg ;


 int CommonPlacePicture (int *,TYPE_6__*,TYPE_3__*) ;
 int EventThreadCreate (int *,int *) ;
 scalar_t__ EventThreadStart (int ,TYPE_4__*,TYPE_5__*) ;
 int LoadLibrary (int ) ;
 int TEXT (char*) ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int memset (TYPE_5__*,int ,int) ;
 scalar_t__ unlikely (int ) ;

int CommonWindowInit(vlc_object_t *obj, display_win32_area_t *area,
                     vout_display_sys_win32_t *sys, bool projection_gestures)
{
    if (unlikely(area->vdcfg.window == ((void*)0)))
        return VLC_EGENERIC;





    sys->hvideownd = ((void*)0);
    sys->hparent = ((void*)0);


    sys->event = EventThreadCreate(obj, area->vdcfg.window);
    if (!sys->event)
        return VLC_EGENERIC;


    event_cfg_t cfg;
    memset(&cfg, 0, sizeof(cfg));
    cfg.width = area->vdcfg.display.width;
    cfg.height = area->vdcfg.display.height;
    cfg.is_projected = projection_gestures;

    event_hwnd_t hwnd;
    if (EventThreadStart(sys->event, &hwnd, &cfg))
        return VLC_EGENERIC;

    sys->hparent = hwnd.hparent;
    sys->hvideownd = hwnd.hvideownd;

    CommonPlacePicture(obj, area, sys);

    return VLC_SUCCESS;
}
