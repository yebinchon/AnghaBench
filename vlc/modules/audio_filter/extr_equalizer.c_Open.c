
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_13__ {int i_format; int i_rate; } ;
struct TYPE_10__ {TYPE_7__ audio; } ;
struct TYPE_9__ {TYPE_7__ audio; } ;
struct TYPE_11__ {int pf_audio_filter; TYPE_2__ fmt_in; TYPE_1__ fmt_out; TYPE_4__* p_sys; } ;
typedef TYPE_3__ filter_t ;
struct TYPE_12__ {int lock; } ;
typedef TYPE_4__ filter_sys_t ;


 int DoWork ;
 scalar_t__ EqzInit (TYPE_3__*,int ) ;
 int VLC_CODEC_FL32 ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 scalar_t__ VLC_SUCCESS ;
 int aout_FormatPrepare (TYPE_7__*) ;
 int free (TYPE_4__*) ;
 TYPE_4__* malloc (int) ;
 int vlc_mutex_destroy (int *) ;
 int vlc_mutex_init (int *) ;

__attribute__((used)) static int Open( vlc_object_t *p_this )
{
    filter_t *p_filter = (filter_t *)p_this;


    filter_sys_t *p_sys = p_filter->p_sys = malloc( sizeof( *p_sys ) );
    if( !p_sys )
        return VLC_ENOMEM;

    vlc_mutex_init( &p_sys->lock );
    if( EqzInit( p_filter, p_filter->fmt_in.audio.i_rate ) != VLC_SUCCESS )
    {
        vlc_mutex_destroy( &p_sys->lock );
        free( p_sys );
        return VLC_EGENERIC;
    }

    p_filter->fmt_in.audio.i_format = VLC_CODEC_FL32;
    aout_FormatPrepare(&p_filter->fmt_in.audio);
    p_filter->fmt_out.audio = p_filter->fmt_in.audio;
    p_filter->pf_audio_filter = DoWork;

    return VLC_SUCCESS;
}
