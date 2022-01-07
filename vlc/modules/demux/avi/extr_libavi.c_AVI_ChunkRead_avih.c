
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vlc_object_t ;
typedef int stream_t ;
struct TYPE_6__ {int i_microsecperframe; int i_maxbytespersec; int i_reserved1; int i_flags; int i_totalframes; int i_initialframes; int i_streams; int i_suggestedbuffersize; int i_width; int i_height; int i_scale; int i_rate; int i_start; int i_length; } ;
struct TYPE_5__ {int i_chunk_fourcc; } ;
struct TYPE_7__ {TYPE_2__ avih; TYPE_1__ common; } ;
typedef TYPE_3__ avi_chunk_t ;


 int AVIFOURCC_avih ;
 int AVIF_HASINDEX ;
 int AVIF_ISINTERLEAVED ;
 int AVIF_MUSTUSEINDEX ;
 int AVIF_TRUSTCKTYPE ;
 int AVI_READ4BYTES (int) ;
 int AVI_READCHUNK_ENTER ;
 int AVI_READCHUNK_EXIT (int ) ;
 int VLC_SUCCESS ;
 int msg_Dbg (int *,char*,int,char*,char*,char*,char*,int,int) ;

__attribute__((used)) static int AVI_ChunkRead_avih( stream_t *s, avi_chunk_t *p_chk )
{
    AVI_READCHUNK_ENTER;

    p_chk->common.i_chunk_fourcc = AVIFOURCC_avih;
    AVI_READ4BYTES( p_chk->avih.i_microsecperframe);
    AVI_READ4BYTES( p_chk->avih.i_maxbytespersec );
    AVI_READ4BYTES( p_chk->avih.i_reserved1 );
    AVI_READ4BYTES( p_chk->avih.i_flags );
    AVI_READ4BYTES( p_chk->avih.i_totalframes );
    AVI_READ4BYTES( p_chk->avih.i_initialframes );
    AVI_READ4BYTES( p_chk->avih.i_streams );
    AVI_READ4BYTES( p_chk->avih.i_suggestedbuffersize );
    AVI_READ4BYTES( p_chk->avih.i_width );
    AVI_READ4BYTES( p_chk->avih.i_height );
    AVI_READ4BYTES( p_chk->avih.i_scale );
    AVI_READ4BYTES( p_chk->avih.i_rate );
    AVI_READ4BYTES( p_chk->avih.i_start );
    AVI_READ4BYTES( p_chk->avih.i_length );
    AVI_READCHUNK_EXIT( VLC_SUCCESS );
}
