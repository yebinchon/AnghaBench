
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {TYPE_3__* p_sys; } ;
typedef TYPE_2__ sout_mux_t ;
struct TYPE_12__ {int i_bitrate; int b_write_header; int tracks; scalar_t__ b_asf_http; int i_bitrate_override; } ;
typedef TYPE_3__ sout_mux_sys_t ;
struct TYPE_13__ {TYPE_1__* p_fmt; TYPE_5__* p_sys; } ;
typedef TYPE_4__ sout_input_t ;
struct TYPE_14__ {scalar_t__ i_cat; } ;
typedef TYPE_5__ asf_track_t ;
struct TYPE_10__ {int i_bitrate; } ;


 scalar_t__ AUDIO_ES ;
 scalar_t__ VIDEO_ES ;
 int msg_Dbg (TYPE_2__*,char*) ;
 int vlc_array_index_of_item (int *,TYPE_5__*) ;
 int vlc_array_remove (int *,int ) ;

__attribute__((used)) static void DelStream( sout_mux_t *p_mux, sout_input_t *p_input )
{


    sout_mux_sys_t *p_sys = p_mux->p_sys;
    asf_track_t *tk = p_input->p_sys;
    msg_Dbg( p_mux, "removing input" );
    if(!p_sys->i_bitrate_override)
    {
        if( tk->i_cat == AUDIO_ES )
        {
             if( p_input->p_fmt->i_bitrate > 24000 )
                 p_sys->i_bitrate -= p_input->p_fmt->i_bitrate;
             else
                 p_sys->i_bitrate -= 128000;
        }
        else if(tk->i_cat == VIDEO_ES )
        {
             if( p_input->p_fmt->i_bitrate > 50000 )
                 p_sys->i_bitrate -= p_input->p_fmt->i_bitrate;
             else
                 p_sys->i_bitrate -= 512000;
        }
    }

    if( p_sys->b_asf_http )
    {
        vlc_array_remove( &p_sys->tracks, vlc_array_index_of_item( &p_sys->tracks, tk ) );
        p_sys->b_write_header = 1;
    }
}
