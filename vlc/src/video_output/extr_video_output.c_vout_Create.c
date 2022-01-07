
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_32__ TYPE_9__ ;
typedef struct TYPE_31__ TYPE_8__ ;
typedef struct TYPE_30__ TYPE_7__ ;
typedef struct TYPE_29__ TYPE_6__ ;
typedef struct TYPE_28__ TYPE_5__ ;
typedef struct TYPE_27__ TYPE_4__ ;
typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;


struct TYPE_31__ {TYPE_9__* p; } ;
typedef TYPE_8__ vout_thread_t ;
struct TYPE_30__ {int * window; } ;
struct TYPE_29__ {int lock; } ;
struct TYPE_28__ {void* position; void* timeout; void* show; } ;
struct TYPE_26__ {int mode; } ;
struct TYPE_25__ {scalar_t__ den; scalar_t__ num; } ;
struct TYPE_27__ {TYPE_3__ crop; TYPE_2__ dar; } ;
struct TYPE_24__ {scalar_t__ i_chroma; } ;
struct TYPE_32__ {int dummy; int window_enabled; TYPE_7__ display_cfg; int refs; int render; int window_lock; int * splitter_name; int * spu; int display_lock; int * display; TYPE_6__ filter; void* is_late_dropped; TYPE_5__ title; int control; int statistic; int snapshot; TYPE_4__ source; TYPE_1__ original; } ;
typedef TYPE_9__ vout_thread_sys_t ;
typedef int vlc_object_t ;


 int VLC_TICK_FROM_MS (int) ;
 int VLC_VAR_STRING ;
 int VOUT_CROP_NONE ;
 int VOUT_WINDOW_STATE_ABOVE ;
 int VOUT_WINDOW_STATE_BELOW ;
 int atomic_init (int *,int ) ;
 scalar_t__ config_GetType (char*) ;
 int * spu_Create (TYPE_8__*,TYPE_8__*) ;
 int spu_Destroy (int *) ;
 int var_Create (TYPE_8__*,char*,int ) ;
 int var_Destroy (TYPE_8__*,char*) ;
 void* var_InheritBool (TYPE_8__*,char*) ;
 void* var_InheritInteger (TYPE_8__*,char*) ;
 int * var_InheritString (TYPE_8__*,char*) ;
 int var_SetString (TYPE_8__*,char*,char*) ;
 int vlc_mutex_init (int *) ;
 int vlc_object_delete (TYPE_8__*) ;
 TYPE_8__* vout_CreateCommon (int *) ;
 int vout_InitInterlacingSupport (TYPE_8__*) ;
 int vout_IntfInit (TYPE_8__*) ;
 int vout_chrono_Init (int *,int,int ) ;
 int vout_control_Init (int *) ;
 int * vout_display_window_New (TYPE_8__*) ;
 int vout_snapshot_New () ;
 int vout_statistic_Init (int *) ;
 int vout_window_SetState (int *,int ) ;

vout_thread_t *vout_Create(vlc_object_t *object)
{
    vout_thread_t *vout = vout_CreateCommon(object);
    if (!vout)
        return ((void*)0);
    vout_thread_sys_t *sys = vout->p;
    sys->dummy = 0;
    vout_IntfInit(vout);


    sys->splitter_name = config_GetType("video-splitter") ?
        var_InheritString(vout, "video-splitter") : ((void*)0);
    if (sys->splitter_name != ((void*)0)) {
        var_Create(vout, "window", VLC_VAR_STRING);
        var_SetString(vout, "window", "wdummy");
    }

    sys->original.i_chroma = 0;
    sys->source.dar.num = 0;
    sys->source.dar.den = 0;
    sys->source.crop.mode = VOUT_CROP_NONE;
    sys->snapshot = vout_snapshot_New();
    vout_statistic_Init(&sys->statistic);


    sys->spu = var_InheritBool(vout, "spu") || var_InheritBool(vout, "osd") ?
               spu_Create(vout, vout) : ((void*)0);

    vout_control_Init(&sys->control);

    sys->title.show = var_InheritBool(vout, "video-title-show");
    sys->title.timeout = var_InheritInteger(vout, "video-title-timeout");
    sys->title.position = var_InheritInteger(vout, "video-title-position");

    vout_InitInterlacingSupport(vout);

    sys->is_late_dropped = var_InheritBool(vout, "drop-late-frames");

    vlc_mutex_init(&sys->filter.lock);


    sys->display = ((void*)0);
    vlc_mutex_init(&sys->display_lock);


    sys->display_cfg.window = vout_display_window_New(vout);
    if (sys->display_cfg.window == ((void*)0)) {
        if (sys->spu)
            spu_Destroy(sys->spu);
        vlc_object_delete(vout);
        return ((void*)0);
    }

    if (sys->splitter_name != ((void*)0))
        var_Destroy(vout, "window");
    sys->window_enabled = 0;
    vlc_mutex_init(&sys->window_lock);


    vout_chrono_Init(&sys->render, 5, VLC_TICK_FROM_MS(10));


    atomic_init(&sys->refs, 0);

    if (var_InheritBool(vout, "video-wallpaper"))
        vout_window_SetState(sys->display_cfg.window, VOUT_WINDOW_STATE_BELOW);
    else if (var_InheritBool(vout, "video-on-top"))
        vout_window_SetState(sys->display_cfg.window, VOUT_WINDOW_STATE_ABOVE);

    return vout;
}
