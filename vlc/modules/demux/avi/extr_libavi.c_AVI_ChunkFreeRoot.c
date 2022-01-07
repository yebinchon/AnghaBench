
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stream_t ;
typedef int avi_chunk_t ;


 int AVI_ChunkClean (int *,int *) ;

void AVI_ChunkFreeRoot( stream_t *s,
                        avi_chunk_t *p_chk )
{
    AVI_ChunkClean( s, p_chk );
}
