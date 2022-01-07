
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_12__ ;
typedef struct TYPE_13__ TYPE_11__ ;


typedef int vlc_object_t ;
struct TYPE_13__ {int i_width; int i_visible_width; int i_height; int i_visible_height; int i_sar_num; int i_sar_den; int i_chroma; } ;
struct TYPE_17__ {scalar_t__ i_speed; int * p_vout; int wait; int lock; int thread; int i_channels; int date; scalar_t__ i_blocks; TYPE_11__ fmt; } ;
typedef TYPE_3__ goom_thread_t ;
struct TYPE_14__ {int i_format; int i_rate; } ;
struct TYPE_16__ {TYPE_12__ audio; } ;
struct TYPE_15__ {TYPE_12__ audio; } ;
struct TYPE_18__ {int pf_flush; int pf_audio_filter; TYPE_2__ fmt_in; TYPE_1__ fmt_out; TYPE_3__* p_sys; } ;
typedef TYPE_4__ filter_t ;


 int DoWork ;
 int Flush ;
 scalar_t__ MAX_SPEED ;
 int Thread ;
 int VLC_CODEC_FL32 ;
 int VLC_CODEC_RGB32 ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int VLC_THREAD_PRIORITY_LOW ;
 int VLC_TICK_0 ;
 int aout_FormatNbChannels (TYPE_12__*) ;
 int * aout_filter_GetVout (TYPE_4__*,TYPE_11__*) ;
 TYPE_3__* calloc (int,int) ;
 int date_Init (int *,int ,int) ;
 int date_Set (int *,int ) ;
 int free (TYPE_3__*) ;
 int msg_Err (TYPE_4__*,char*) ;
 int var_InheritInteger (TYPE_4__*,char*) ;
 scalar_t__ vlc_clone (int *,int ,TYPE_3__*,int ) ;
 int vlc_cond_destroy (int *) ;
 int vlc_cond_init (int *) ;
 int vlc_mutex_destroy (int *) ;
 int vlc_mutex_init (int *) ;
 int vout_Close (int *) ;

__attribute__((used)) static int Open( vlc_object_t *p_this )
{
    filter_t *p_filter = (filter_t *)p_this;
    goom_thread_t *p_thread;


    p_filter->p_sys = p_thread = calloc( 1, sizeof(*p_thread) );

    const int width = var_InheritInteger( p_filter, "goom-width" );
    const int height = var_InheritInteger( p_filter, "goom-height" );

    p_thread->fmt.i_width = p_thread->fmt.i_visible_width = width;
    p_thread->fmt.i_height = p_thread->fmt.i_visible_height = height;
    p_thread->fmt.i_chroma = VLC_CODEC_RGB32;
    p_thread->fmt.i_sar_num = p_thread->fmt.i_sar_den = 1;

    p_thread->p_vout = aout_filter_GetVout( p_filter, &p_thread->fmt );
    if( p_thread->p_vout == ((void*)0) )
    {
        msg_Err( p_filter, "no suitable vout module" );
        free( p_thread );
        return VLC_EGENERIC;
    }

    p_thread->i_speed = MAX_SPEED - var_InheritInteger( p_filter, "goom-speed" );
    if( p_thread->i_speed < 0 )
        p_thread->i_speed = 0;

    vlc_mutex_init( &p_thread->lock );
    vlc_cond_init( &p_thread->wait );

    p_thread->i_blocks = 0;
    date_Init( &p_thread->date, p_filter->fmt_in.audio.i_rate, 1 );
    date_Set( &p_thread->date, VLC_TICK_0 );
    p_thread->i_channels = aout_FormatNbChannels( &p_filter->fmt_in.audio );

    if( vlc_clone( &p_thread->thread,
                   Thread, p_thread, VLC_THREAD_PRIORITY_LOW ) )
    {
        msg_Err( p_filter, "cannot launch goom thread" );
        vlc_mutex_destroy( &p_thread->lock );
        vlc_cond_destroy( &p_thread->wait );
        vout_Close( p_thread->p_vout );
        free( p_thread );
        return VLC_EGENERIC;
    }

    p_filter->fmt_in.audio.i_format = VLC_CODEC_FL32;
    p_filter->fmt_out.audio = p_filter->fmt_in.audio;
    p_filter->pf_audio_filter = DoWork;
    p_filter->pf_flush = Flush;
    return VLC_SUCCESS;
}
