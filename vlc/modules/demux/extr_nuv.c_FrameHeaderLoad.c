
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef void* uint8_t ;
struct TYPE_7__ {char i_compression; char i_keyframe; void* i_length; void* i_timecode; void* i_filters; void* i_type; } ;
typedef TYPE_1__ frame_header_t ;
struct TYPE_8__ {int s; TYPE_3__* p_sys; } ;
typedef TYPE_2__ demux_t ;
struct TYPE_9__ {void** fh_buffer; } ;
typedef TYPE_3__ demux_sys_t ;


 void* GetDWLE (void**) ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int msg_Dbg (TYPE_2__*,char*,void*,char,char,void*,void*,void*) ;
 int vlc_stream_Read (int ,void**,int) ;

__attribute__((used)) static int FrameHeaderLoad( demux_t *p_demux, frame_header_t *h )
{
    demux_sys_t *p_sys = p_demux->p_sys;
    uint8_t* buffer = p_sys->fh_buffer;

    if( vlc_stream_Read( p_demux->s, buffer, 12 ) != 12 )
        return VLC_EGENERIC;

    h->i_type = buffer[0];
    h->i_compression = buffer[1];
    h->i_keyframe = buffer[2];
    h->i_filters = buffer[3];

    h->i_timecode = GetDWLE( &buffer[4] );
    h->i_length = GetDWLE( &buffer[8] );
    return VLC_SUCCESS;
}
