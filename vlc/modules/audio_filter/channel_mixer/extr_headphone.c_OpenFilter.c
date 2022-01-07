
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_9__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_17__ {int i_physical_channels; int i_chan_mode; int i_rate; void* i_format; } ;
struct TYPE_14__ {TYPE_9__ audio; } ;
struct TYPE_13__ {TYPE_9__ audio; } ;
struct TYPE_15__ {TYPE_2__ fmt_out; TYPE_1__ fmt_in; int pf_audio_filter; TYPE_4__* p_sys; } ;
typedef TYPE_3__ filter_t ;
struct TYPE_16__ {int * p_atomic_operations; scalar_t__ i_nb_atomic_operations; int * p_overflow_buffer; scalar_t__ i_overflow_buffer_size; } ;
typedef TYPE_4__ filter_sys_t ;


 int AOUT_CHANMODE_DOLBYSTEREO ;
 scalar_t__ AOUT_CHANS_5_0 ;
 scalar_t__ AOUT_CHANS_STEREO ;
 int AOUT_CHAN_LEFT ;
 int AOUT_CHAN_RIGHT ;
 int Convert ;
 scalar_t__ Init (int ,TYPE_4__*,int ,int,int ) ;
 void* VLC_CODEC_FL32 ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_OBJECT (TYPE_3__*) ;
 int VLC_SUCCESS ;
 int aout_FormatNbChannels (TYPE_9__*) ;
 int aout_FormatPrepare (TYPE_9__*) ;
 int free (TYPE_4__*) ;
 TYPE_4__* malloc (int) ;
 int msg_Dbg (TYPE_3__*,char*) ;
 int var_InheritBool (TYPE_3__*,char*) ;

__attribute__((used)) static int OpenFilter( vlc_object_t *p_this )
{
    filter_t *p_filter = (filter_t *)p_this;
    filter_sys_t *p_sys;


    if( p_filter->fmt_out.audio.i_physical_channels
            != (AOUT_CHAN_LEFT|AOUT_CHAN_RIGHT) )
    {
        msg_Dbg( p_filter, "filter discarded (incompatible format)" );
        return VLC_EGENERIC;
    }


    p_sys = p_filter->p_sys = malloc( sizeof(filter_sys_t) );
    if( p_sys == ((void*)0) )
        return VLC_ENOMEM;
    p_sys->i_overflow_buffer_size = 0;
    p_sys->p_overflow_buffer = ((void*)0);
    p_sys->i_nb_atomic_operations = 0;
    p_sys->p_atomic_operations = ((void*)0);

    if( Init( VLC_OBJECT(p_filter), p_sys
                , aout_FormatNbChannels ( &(p_filter->fmt_in.audio) )
                , p_filter->fmt_in.audio.i_physical_channels
                , p_filter->fmt_in.audio.i_rate ) < 0 )
    {
        free( p_sys );
        return VLC_EGENERIC;
    }


    p_filter->fmt_in.audio.i_format = VLC_CODEC_FL32;
    p_filter->fmt_out.audio.i_format = VLC_CODEC_FL32;
    p_filter->fmt_out.audio.i_rate = p_filter->fmt_in.audio.i_rate;
    p_filter->fmt_in.audio.i_chan_mode =
                                   p_filter->fmt_out.audio.i_chan_mode;
    if( p_filter->fmt_in.audio.i_physical_channels == AOUT_CHANS_STEREO
     && (p_filter->fmt_in.audio.i_chan_mode & AOUT_CHANMODE_DOLBYSTEREO)
     && !var_InheritBool( p_filter, "headphone-dolby" ) )
    {
        p_filter->fmt_in.audio.i_physical_channels = AOUT_CHANS_5_0;
    }
    p_filter->pf_audio_filter = Convert;

    aout_FormatPrepare(&p_filter->fmt_in.audio);
    aout_FormatPrepare(&p_filter->fmt_out.audio);

    return VLC_SUCCESS;
}
