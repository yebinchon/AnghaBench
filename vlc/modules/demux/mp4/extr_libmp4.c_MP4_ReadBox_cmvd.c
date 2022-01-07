
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int stream_t ;
struct TYPE_6__ {TYPE_1__* p_cmvd; } ;
struct TYPE_7__ {TYPE_2__ data; } ;
struct TYPE_5__ {int b_compressed; int i_compressed_size; int p_data; int i_uncompressed_size; } ;
typedef TYPE_3__ MP4_Box_t ;


 int MP4_Box_data_cmvd_t ;
 int MP4_FreeBox_cmvd ;
 int MP4_GET4BYTES (int ) ;
 int MP4_READBOX_ENTER (int ,int ) ;
 int MP4_READBOX_EXIT (int) ;
 int i_read ;
 int malloc (int ) ;
 int memcpy (int ,int ,int ) ;
 int msg_Dbg (int *,char*,int ) ;
 int p_peek ;

__attribute__((used)) static int MP4_ReadBox_cmvd( stream_t *p_stream, MP4_Box_t *p_box )
{
    MP4_READBOX_ENTER( MP4_Box_data_cmvd_t, MP4_FreeBox_cmvd );

    MP4_GET4BYTES( p_box->data.p_cmvd->i_uncompressed_size );

    p_box->data.p_cmvd->i_compressed_size = i_read;

    if( !( p_box->data.p_cmvd->p_data = malloc( i_read ) ) )
        MP4_READBOX_EXIT( 0 );


    memcpy( p_box->data.p_cmvd->p_data, p_peek,i_read);

    p_box->data.p_cmvd->b_compressed = 1;






    MP4_READBOX_EXIT( 1 );
}
