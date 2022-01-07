
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stream_t ;
typedef int avi_chunk_t ;


 scalar_t__ AVI_ChunkReadCommon (int *,int *,int *) ;
 int AVI_GotoNextChunk (int *,int *) ;
 int VLC_EGENERIC ;

__attribute__((used)) static int AVI_NextChunk( stream_t *s, avi_chunk_t *p_chk )
{
    avi_chunk_t chk;

    if( !p_chk )
    {
        if( AVI_ChunkReadCommon( s, &chk, ((void*)0) ) )
        {
            return VLC_EGENERIC;
        }
        p_chk = &chk;
    }

    return AVI_GotoNextChunk( s, p_chk );
}
