
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int stream_t ;
struct TYPE_6__ {TYPE_1__* p_tsel; } ;
struct TYPE_7__ {TYPE_2__ data; } ;
struct TYPE_5__ {scalar_t__ i_switch_group; } ;
typedef TYPE_3__ MP4_Box_t ;


 int MP4_Box_data_tsel_t ;
 int MP4_GET4BYTES (scalar_t__) ;
 int MP4_READBOX_ENTER (int ,int *) ;
 int MP4_READBOX_EXIT (int) ;
 int i_read ;

__attribute__((used)) static int MP4_ReadBox_tsel( stream_t *p_stream, MP4_Box_t *p_box )
{
    MP4_READBOX_ENTER( MP4_Box_data_tsel_t, ((void*)0) );
    uint32_t i_version;
    MP4_GET4BYTES( i_version );
    if ( i_version != 0 || i_read < 4 )
        MP4_READBOX_EXIT( 0 );
    MP4_GET4BYTES( p_box->data.p_tsel->i_switch_group );

    MP4_READBOX_EXIT( 1 );
}
