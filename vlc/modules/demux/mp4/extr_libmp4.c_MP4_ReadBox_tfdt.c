
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int stream_t ;
struct TYPE_7__ {int i_version; int i_base_media_decode_time; } ;
struct TYPE_5__ {TYPE_4__* p_tfdt; } ;
struct TYPE_6__ {TYPE_1__ data; } ;
typedef TYPE_2__ MP4_Box_t ;


 int MP4_Box_data_tfdt_t ;
 int MP4_GET4BYTES (int ) ;
 int MP4_GET8BYTES (int ) ;
 int MP4_GETVERSIONFLAGS (TYPE_4__*) ;
 int MP4_READBOX_ENTER (int ,int *) ;
 int MP4_READBOX_EXIT (int) ;
 int i_read ;

__attribute__((used)) static int MP4_ReadBox_tfdt( stream_t *p_stream, MP4_Box_t *p_box )
{
    MP4_READBOX_ENTER( MP4_Box_data_tfdt_t, ((void*)0) );
    if( i_read < 8 )
        MP4_READBOX_EXIT( 0 );

    MP4_GETVERSIONFLAGS( p_box->data.p_tfdt );

    if( p_box->data.p_tfdt->i_version == 0 )
        MP4_GET4BYTES( p_box->data.p_tfdt->i_base_media_decode_time );
    else if( p_box->data.p_tfdt->i_version == 1 )
        MP4_GET8BYTES( p_box->data.p_tfdt->i_base_media_decode_time );
    else
        MP4_READBOX_EXIT( 0 );

    MP4_READBOX_EXIT( 1 );
}
