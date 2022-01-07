
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_10__ ;


struct TYPE_15__ {int height; int width; } ;
typedef TYPE_3__ vout_window_cfg_t ;
typedef int vlc_object_t ;
struct TYPE_12__ {int i_format; } ;
struct TYPE_14__ {TYPE_10__ audio; } ;
struct TYPE_13__ {TYPE_10__ audio; } ;
struct TYPE_16__ {int pf_audio_filter; TYPE_2__ fmt_in; TYPE_1__ fmt_out; TYPE_5__* p_sys; } ;
typedef TYPE_4__ filter_t ;
struct TYPE_17__ {int thread; int * fifo; int * gl; int wind_param; int f_rotationIncrement; scalar_t__ f_rotationAngle; int * p_prev_s16_buff; scalar_t__ i_prev_nb_samples; int i_channels; } ;
typedef TYPE_5__ filter_sys_t ;


 int DoWork ;
 int ROTATION_INCREMENT ;
 int Thread ;
 int VLC_CODEC_FL32 ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_OBJECT (TYPE_4__*) ;
 int VLC_SUCCESS ;
 int VLC_THREAD_PRIORITY_VIDEO ;
 int aout_FormatNbChannels (TYPE_10__*) ;
 int * block_FifoNew () ;
 int block_FifoRelease (int *) ;
 int free (TYPE_5__*) ;
 scalar_t__ malloc (int) ;
 int var_InheritInteger (TYPE_4__*,char*) ;
 scalar_t__ vlc_clone (int *,int ,TYPE_4__*,int ) ;
 int * vlc_gl_surface_Create (int *,TYPE_3__*,int *) ;
 int window_get_param (int ,int *) ;

__attribute__((used)) static int Open(vlc_object_t * p_this)
{
    filter_t *p_filter = (filter_t *)p_this;
    filter_sys_t *p_sys;

    p_sys = p_filter->p_sys = (filter_sys_t*)malloc(sizeof(*p_sys));
    if (p_sys == ((void*)0))
        return VLC_ENOMEM;


    p_sys->i_channels = aout_FormatNbChannels(&p_filter->fmt_in.audio);
    p_sys->i_prev_nb_samples = 0;
    p_sys->p_prev_s16_buff = ((void*)0);

    p_sys->f_rotationAngle = 0;
    p_sys->f_rotationIncrement = ROTATION_INCREMENT;


    window_get_param( VLC_OBJECT( p_filter ), &p_sys->wind_param );


    p_sys->fifo = block_FifoNew();
    if (p_sys->fifo == ((void*)0))
        goto error;


    vout_window_cfg_t cfg = {
        .width = var_InheritInteger(p_filter, "glspectrum-width"),
        .height = var_InheritInteger(p_filter, "glspectrum-height"),
    };

    p_sys->gl = vlc_gl_surface_Create(p_this, &cfg, ((void*)0));
    if (p_sys->gl == ((void*)0))
    {
        block_FifoRelease(p_sys->fifo);
        goto error;
    }


    if (vlc_clone(&p_sys->thread, Thread, p_filter,
                  VLC_THREAD_PRIORITY_VIDEO))
        goto error;

    p_filter->fmt_in.audio.i_format = VLC_CODEC_FL32;
    p_filter->fmt_out.audio = p_filter->fmt_in.audio;
    p_filter->pf_audio_filter = DoWork;

    return VLC_SUCCESS;

error:
    free(p_sys);
    return VLC_EGENERIC;
}
