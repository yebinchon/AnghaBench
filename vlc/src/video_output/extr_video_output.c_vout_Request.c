
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_16__ {TYPE_2__* p; } ;
typedef TYPE_1__ vout_thread_t ;
struct TYPE_17__ {float rate; scalar_t__ spu; int thread; int original; scalar_t__ delay; int * clock; int * display; } ;
typedef TYPE_2__ vout_thread_sys_t ;
struct TYPE_18__ {int * clock; int * fmt; TYPE_1__* vout; } ;
typedef TYPE_3__ vout_configuration_t ;
typedef int vlc_video_context ;
typedef int video_format_t ;
typedef int input_thread_t ;


 int Thread ;
 int VLC_THREAD_PRIORITY_OUTPUT ;
 int VoutCheckFormat (int *) ;
 int VoutFixFormat (int *,int *) ;
 int assert (int ) ;
 int msg_Err (TYPE_1__*,char*) ;
 int spu_Attach (scalar_t__,int *) ;
 int video_format_Clean (int *) ;
 scalar_t__ vlc_clone (int *,int ,TYPE_1__*,int ) ;
 scalar_t__ vout_ChangeSource (TYPE_1__*,int *) ;
 int vout_DisableWindow (TYPE_1__*) ;
 scalar_t__ vout_EnableWindow (TYPE_1__*,int *,int *) ;
 int vout_IntfReinit (TYPE_1__*) ;
 int vout_ReinitInterlacingSupport (TYPE_1__*) ;
 int vout_ReleaseDisplay (TYPE_1__*) ;
 scalar_t__ vout_Start (TYPE_1__*,int *,TYPE_3__ const*) ;
 int vout_StopDisplay (TYPE_1__*) ;

int vout_Request(const vout_configuration_t *cfg, vlc_video_context *vctx, input_thread_t *input)
{
    vout_thread_t *vout = cfg->vout;
    vout_thread_sys_t *sys = vout->p;

    assert(cfg->fmt != ((void*)0));
    assert(cfg->clock != ((void*)0));

    if (!VoutCheckFormat(cfg->fmt))

        return -1;

    video_format_t original;
    VoutFixFormat(&original, cfg->fmt);

    if (vout_ChangeSource(vout, &original) == 0)
    {
        video_format_Clean(&original);
        return 0;
    }

    if (vout_EnableWindow(vout, &original, ((void*)0)) != 0)
    {

        msg_Err(vout, "failed to enable window");
        video_format_Clean(&original);
        return -1;
    }

    if (sys->display != ((void*)0))
        vout_StopDisplay(vout);

    vout_ReinitInterlacingSupport(vout);

    sys->original = original;

    sys->delay = 0;
    sys->rate = 1.f;
    sys->clock = cfg->clock;
    sys->delay = 0;

    if (vout_Start(vout, vctx, cfg))
    {
        msg_Err(vout, "video output display creation failed");
        video_format_Clean(&sys->original);
        vout_DisableWindow(vout);
        return -1;
    }
    if (vlc_clone(&sys->thread, Thread, vout, VLC_THREAD_PRIORITY_OUTPUT)) {
        vout_ReleaseDisplay(vout);
        vout_DisableWindow(vout);
        return -1;
    }

    if (input != ((void*)0) && sys->spu)
        spu_Attach(sys->spu, input);
    vout_IntfReinit(vout);
    return 0;
}
