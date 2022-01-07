
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vlc_object_t ;
typedef int stream_t ;
typedef int avi_chunk_t ;
struct TYPE_2__ {int dwTotalFrames; } ;
typedef TYPE_1__ avi_chunk_dmlh_t ;


 int AVI_READ4BYTES (int ) ;
 int AVI_READCHUNK_ENTER ;
 int AVI_READCHUNK_EXIT (int ) ;
 int VLC_SUCCESS ;
 int msg_Dbg (int *,char*,int ) ;

__attribute__((used)) static int AVI_ChunkRead_dmlh( stream_t *s, avi_chunk_t *p_chk )
{
    avi_chunk_dmlh_t *p_dmlh = (avi_chunk_dmlh_t*)p_chk;

    AVI_READCHUNK_ENTER;

    AVI_READ4BYTES( p_dmlh->dwTotalFrames );





    AVI_READCHUNK_EXIT( VLC_SUCCESS );
}
