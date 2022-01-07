
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
typedef int stream_t ;
struct TYPE_6__ {TYPE_1__* p_pnot; } ;
struct TYPE_7__ {int i_size; TYPE_2__ data; } ;
struct TYPE_5__ {scalar_t__ i_index; int i_type; int i_date; } ;
typedef TYPE_3__ MP4_Box_t ;


 int MP4_Box_data_pnot_t ;
 int MP4_GET2BYTES (scalar_t__) ;
 int MP4_GET4BYTES (int ) ;
 int MP4_GETFOURCC (int ) ;
 int MP4_READBOX_ENTER (int ,int *) ;
 int MP4_READBOX_EXIT (int) ;

__attribute__((used)) static int MP4_ReadBox_pnot( stream_t *p_stream, MP4_Box_t *p_box )
{
    if ( p_box->i_size != 20 )
        return 0;
    MP4_READBOX_ENTER( MP4_Box_data_pnot_t, ((void*)0) );
    MP4_GET4BYTES( p_box->data.p_pnot->i_date );
    uint16_t i_version;
    MP4_GET2BYTES( i_version );
    if ( i_version != 0 )
        MP4_READBOX_EXIT( 0 );
    MP4_GETFOURCC( p_box->data.p_pnot->i_type );
    MP4_GET2BYTES( p_box->data.p_pnot->i_index );
    MP4_READBOX_EXIT( 1 );
}
