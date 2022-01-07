
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int sout_stream_t ;
struct TYPE_5__ {scalar_t__ i_cat; } ;
struct TYPE_6__ {TYPE_1__ format; } ;
typedef TYPE_2__ sout_stream_id_sys_t ;
typedef int block_t ;


 scalar_t__ AUDIO_ES ;
 int SendAudio (int *,TYPE_2__*,int *) ;
 int SendVideo (int *,TYPE_2__*,int *) ;
 scalar_t__ VIDEO_ES ;
 int VLC_SUCCESS ;

__attribute__((used)) static int Send( sout_stream_t *p_stream, void *_id, block_t *p_buffer )
{
    sout_stream_id_sys_t *id = (sout_stream_id_sys_t *)_id;
    if ( id->format.i_cat == VIDEO_ES )
        return SendVideo( p_stream, id, p_buffer );
    else if ( id->format.i_cat == AUDIO_ES )
        return SendAudio( p_stream, id, p_buffer );
    return VLC_SUCCESS;
}
