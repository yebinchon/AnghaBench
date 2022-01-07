
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_object_t ;
typedef int stream_t ;
struct TYPE_4__ {scalar_t__ i_scale; scalar_t__ i_rate; scalar_t__ i_samplesize; int i_handler; int i_type; scalar_t__ i_quality; scalar_t__ i_suggestedbuffersize; scalar_t__ i_length; scalar_t__ i_start; scalar_t__ i_initialframes; scalar_t__ i_reserved1; scalar_t__ i_flags; } ;
struct TYPE_5__ {TYPE_1__ strh; } ;
typedef TYPE_2__ avi_chunk_t ;


 int AVI_READ4BYTES (scalar_t__) ;
 int AVI_READCHUNK_ENTER ;
 int AVI_READCHUNK_EXIT (int ) ;
 int AVI_READFOURCC (int ) ;
 int VLC_SUCCESS ;
 int msg_Dbg (int *,char*,char*,int ,scalar_t__,float) ;

__attribute__((used)) static int AVI_ChunkRead_strh( stream_t *s, avi_chunk_t *p_chk )
{
    AVI_READCHUNK_ENTER;

    AVI_READFOURCC( p_chk->strh.i_type );
    AVI_READFOURCC( p_chk->strh.i_handler );
    AVI_READ4BYTES( p_chk->strh.i_flags );
    AVI_READ4BYTES( p_chk->strh.i_reserved1 );
    AVI_READ4BYTES( p_chk->strh.i_initialframes );
    AVI_READ4BYTES( p_chk->strh.i_scale );
    AVI_READ4BYTES( p_chk->strh.i_rate );
    AVI_READ4BYTES( p_chk->strh.i_start );
    AVI_READ4BYTES( p_chk->strh.i_length );
    AVI_READ4BYTES( p_chk->strh.i_suggestedbuffersize );
    AVI_READ4BYTES( p_chk->strh.i_quality );
    AVI_READ4BYTES( p_chk->strh.i_samplesize );
    AVI_READCHUNK_EXIT( VLC_SUCCESS );
}
