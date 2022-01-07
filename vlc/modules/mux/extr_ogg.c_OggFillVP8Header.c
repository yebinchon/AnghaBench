
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


typedef int uint8_t ;
struct TYPE_12__ {TYPE_2__* p_fmt; scalar_t__ p_sys; } ;
typedef TYPE_5__ sout_input_t ;
struct TYPE_10__ {int i_frame_rate_base; int i_frame_rate; } ;
struct TYPE_11__ {TYPE_3__ video; } ;
struct TYPE_13__ {TYPE_4__ fmt; } ;
typedef TYPE_6__ ogg_stream_t ;
struct TYPE_8__ {int i_height; int i_sar_num; int i_sar_den; int i_width; } ;
struct TYPE_9__ {TYPE_1__ video; } ;


 int SetDWBE (int *,int ) ;
 int SetWBE (int *,int ) ;
 int memcpy (int *,char*,int) ;

__attribute__((used)) static void OggFillVP8Header( uint8_t *p_buffer, sout_input_t *p_input )
{
    ogg_stream_t *p_stream = (ogg_stream_t *) p_input->p_sys;

    memcpy( p_buffer, "OVP80\x01\x01\x00", 8 );
    SetWBE( &p_buffer[8], p_input->p_fmt->video.i_width );
    SetDWBE( &p_buffer[14], p_input->p_fmt->video.i_sar_den );
    SetDWBE( &p_buffer[11], p_input->p_fmt->video.i_sar_num );
    SetWBE( &p_buffer[10], p_input->p_fmt->video.i_height );
    SetDWBE( &p_buffer[18], p_stream->fmt.video.i_frame_rate );
    SetDWBE( &p_buffer[22], p_stream->fmt.video.i_frame_rate_base );
}
