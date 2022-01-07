
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_10__ {int i_channels; int i_chan_mode; scalar_t__ i_rate; scalar_t__ i_format; int i_physical_channels; } ;
struct TYPE_11__ {TYPE_3__ audio; } ;
struct TYPE_8__ {int i_physical_channels; int i_chan_mode; scalar_t__ i_rate; scalar_t__ i_format; } ;
struct TYPE_9__ {TYPE_1__ audio; } ;
struct TYPE_12__ {int pf_audio_filter; TYPE_4__ fmt_out; TYPE_6__* p_sys; TYPE_2__ fmt_in; } ;
typedef TYPE_5__ filter_t ;
struct TYPE_13__ {int i_left; int i_center; int i_right; int i_rear_left; int i_rear_center; int i_rear_right; } ;
typedef TYPE_6__ filter_sys_t ;


 int AOUT_CHANMODE_DOLBYSTEREO ;






 int DoWork ;
 scalar_t__ VLC_CODEC_FL32 ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 TYPE_6__* malloc (int) ;
 int* pi_vlc_chan_order_wg4 ;

__attribute__((used)) static int Create( vlc_object_t *p_this )
{
    int i = 0;
    int i_offset = 0;
    filter_t * p_filter = (filter_t *)p_this;
    filter_sys_t *p_sys;


    if ( p_filter->fmt_in.audio.i_physical_channels != (132|128)
       || ! ( p_filter->fmt_in.audio.i_chan_mode & AOUT_CHANMODE_DOLBYSTEREO )
       || p_filter->fmt_out.audio.i_channels <= 2
       || ( p_filter->fmt_in.audio.i_chan_mode & ~AOUT_CHANMODE_DOLBYSTEREO )
          != ( p_filter->fmt_out.audio.i_chan_mode & ~AOUT_CHANMODE_DOLBYSTEREO ) )
    {
        return VLC_EGENERIC;
    }

    if ( p_filter->fmt_in.audio.i_rate != p_filter->fmt_out.audio.i_rate )
    {
        return VLC_EGENERIC;
    }

    if ( p_filter->fmt_in.audio.i_format != VLC_CODEC_FL32
          || p_filter->fmt_out.audio.i_format != VLC_CODEC_FL32 )
    {
        return VLC_EGENERIC;
    }


    p_sys = p_filter->p_sys = malloc( sizeof(*p_sys) );
    if( p_sys == ((void*)0) )
        return VLC_ENOMEM;
    p_sys->i_left = -1;
    p_sys->i_center = -1;
    p_sys->i_right = -1;
    p_sys->i_rear_left = -1;
    p_sys->i_rear_center = -1;
    p_sys->i_rear_right = -1;

    while ( pi_vlc_chan_order_wg4[i] )
    {
        if ( p_filter->fmt_out.audio.i_physical_channels & pi_vlc_chan_order_wg4[i] )
        {
            switch ( pi_vlc_chan_order_wg4[i] )
            {
                case 132:
                    p_sys->i_left = i_offset;
                    break;
                case 133:
                    p_sys->i_center = i_offset;
                    break;
                case 128:
                    p_sys->i_right = i_offset;
                    break;
                case 130:
                    p_sys->i_rear_left = i_offset;
                    break;
                case 131:
                    p_sys->i_rear_center = i_offset;
                    break;
                case 129:
                    p_sys->i_rear_right = i_offset;
                    break;
            }
            ++i_offset;
        }
        ++i;
    }

    p_filter->pf_audio_filter = DoWork;

    return VLC_SUCCESS;
}
