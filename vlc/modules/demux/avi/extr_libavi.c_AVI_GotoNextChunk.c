
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int stream_t ;
typedef scalar_t__ ssize_t ;
typedef int avi_chunk_t ;


 scalar_t__ AVI_ChunkEnd (int const*) ;
 int STREAM_CAN_SEEK ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int vlc_stream_Control (int *,int ,int*) ;
 scalar_t__ vlc_stream_Read (int *,int *,scalar_t__) ;
 int vlc_stream_Seek (int *,scalar_t__ const) ;
 scalar_t__ const vlc_stream_Tell (int *) ;

__attribute__((used)) static int AVI_GotoNextChunk( stream_t *s, const avi_chunk_t *p_chk )
{
    bool b_seekable = 0;
    const uint64_t i_offset = AVI_ChunkEnd( p_chk );
    if ( !vlc_stream_Control(s, STREAM_CAN_SEEK, &b_seekable) && b_seekable )
    {
        return vlc_stream_Seek( s, i_offset );
    }
    else
    {
        ssize_t i_read = i_offset - vlc_stream_Tell( s );
        return (i_read >=0 && vlc_stream_Read( s, ((void*)0), i_read ) == i_read) ?
                    VLC_SUCCESS : VLC_EGENERIC;
    }
}
