
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int vlc_tick_t ;
typedef int uint32_t ;
struct TYPE_6__ {int b_selected; int i_track_ID; int b_ok; } ;
typedef TYPE_1__ mp4_track_t ;
typedef int demux_t ;


 scalar_t__ MP4_isMetadata (TYPE_1__*) ;
 int TrackGotoChunkSample (int *,TYPE_1__*,int ,int ) ;
 scalar_t__ TrackTimeToSampleChunk (int *,TYPE_1__*,int ,int *,int *) ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int msg_Warn (int *,char*,int ) ;

__attribute__((used)) static int MP4_TrackSeek( demux_t *p_demux, mp4_track_t *p_track,
                          vlc_tick_t i_start )
{
    uint32_t i_chunk;
    uint32_t i_sample;

    if( !p_track->b_ok || MP4_isMetadata( p_track ) )
        return VLC_EGENERIC;

    p_track->b_selected = 0;

    if( TrackTimeToSampleChunk( p_demux, p_track, i_start,
                                &i_chunk, &i_sample ) )
    {
        msg_Warn( p_demux, "cannot select track[Id 0x%x]",
                  p_track->i_track_ID );
        return VLC_EGENERIC;
    }

    p_track->b_selected = 1;
    if( !TrackGotoChunkSample( p_demux, p_track, i_chunk, i_sample ) )
        p_track->b_selected = 1;

    return p_track->b_selected ? VLC_SUCCESS : VLC_EGENERIC;
}
