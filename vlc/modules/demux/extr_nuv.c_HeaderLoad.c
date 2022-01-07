
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {scalar_t__ d_fps; void* i_keyframe_distance; void* i_text_blocks; void* i_audio_blocks; void* i_video_blocks; scalar_t__ d_aspect; void* i_height; void* i_width; int version; int id; int i_mode; void* i_height_desired; void* i_width_desired; } ;
typedef TYPE_1__ header_t ;
struct TYPE_7__ {int s; } ;
typedef TYPE_2__ demux_t ;


 void* GetDWLE (int *) ;
 int GetDoubleLE (scalar_t__*,int *) ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int memcpy (int ,int *,int) ;
 int msg_Dbg (TYPE_2__*,char*,int ,int ,void*,void*,scalar_t__,scalar_t__,void*,void*,void*,void*) ;
 int vlc_stream_Read (int ,int *,int) ;

__attribute__((used)) static int HeaderLoad( demux_t *p_demux, header_t *h )
{
    uint8_t buffer[72];

    if( vlc_stream_Read( p_demux->s, buffer, 72 ) != 72 )
        return VLC_EGENERIC;


    memcpy( h->id, &buffer[ 0], 12 );
    memcpy( h->version, &buffer[12], 5 );
    h->i_width = GetDWLE( &buffer[20] );
    h->i_height = GetDWLE( &buffer[24] );
    h->i_width_desired = GetDWLE( &buffer[28] );
    h->i_height_desired = GetDWLE( &buffer[32] );
    h->i_mode = buffer[36];
    GetDoubleLE( &h->d_aspect, &buffer[40] );
    GetDoubleLE( &h->d_fps, &buffer[48] );
    h->i_video_blocks = GetDWLE( &buffer[56] );
    h->i_audio_blocks = GetDWLE( &buffer[60] );
    h->i_text_blocks = GetDWLE( &buffer[64] );
    h->i_keyframe_distance = GetDWLE( &buffer[68] );







    return (h->d_fps) ? VLC_SUCCESS : VLC_EGENERIC;
}
