
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int stream_t ;
struct TYPE_5__ {TYPE_2__* p_load; } ;
struct TYPE_7__ {int i_size; TYPE_1__ data; } ;
struct TYPE_6__ {int i_hints; int i_flags; int i_duration; int i_start_time; } ;
typedef TYPE_3__ MP4_Box_t ;


 int MP4_Box_data_load_t ;
 int MP4_GET4BYTES (int ) ;
 int MP4_READBOX_ENTER (int ,int *) ;
 int MP4_READBOX_EXIT (int) ;

__attribute__((used)) static int MP4_ReadBox_load( stream_t *p_stream, MP4_Box_t *p_box )
{
    if ( p_box->i_size != 24 )
        return 0;
    MP4_READBOX_ENTER( MP4_Box_data_load_t, ((void*)0) );
    MP4_GET4BYTES( p_box->data.p_load->i_start_time );
    MP4_GET4BYTES( p_box->data.p_load->i_duration );
    MP4_GET4BYTES( p_box->data.p_load->i_flags );
    MP4_GET4BYTES( p_box->data.p_load->i_hints );
    MP4_READBOX_EXIT( 1 );
}
