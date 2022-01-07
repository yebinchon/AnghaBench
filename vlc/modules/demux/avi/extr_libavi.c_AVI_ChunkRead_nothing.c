
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stream_t ;
typedef int avi_chunk_t ;


 int AVI_NextChunk (int *,int *) ;

__attribute__((used)) static int AVI_ChunkRead_nothing( stream_t *s, avi_chunk_t *p_chk )
{
    return AVI_NextChunk( s, p_chk );
}
