
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int stream_t ;
struct TYPE_6__ {TYPE_1__* p_btrt; } ;
struct TYPE_7__ {TYPE_2__ data; } ;
struct TYPE_5__ {int i_avg_bitrate; int i_max_bitrate; int i_buffer_size; } ;
typedef TYPE_3__ MP4_Box_t ;


 int MP4_Box_data_btrt_t ;
 int MP4_GET4BYTES (int ) ;
 int MP4_READBOX_ENTER (int ,int *) ;
 int MP4_READBOX_EXIT (int) ;
 int i_read ;

__attribute__((used)) static int MP4_ReadBox_btrt( stream_t *p_stream, MP4_Box_t *p_box )
{
    MP4_READBOX_ENTER( MP4_Box_data_btrt_t, ((void*)0) );

    if(i_read != 12)
        MP4_READBOX_EXIT( 0 );

    MP4_GET4BYTES( p_box->data.p_btrt->i_buffer_size );
    MP4_GET4BYTES( p_box->data.p_btrt->i_max_bitrate );
    MP4_GET4BYTES( p_box->data.p_btrt->i_avg_bitrate );

    MP4_READBOX_EXIT( 1 );
}
