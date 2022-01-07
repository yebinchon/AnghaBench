
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int stream_t ;
struct TYPE_6__ {TYPE_1__* p_skcr; } ;
struct TYPE_7__ {TYPE_2__ data; } ;
struct TYPE_5__ {int i_decr; int i_encr; int i_init; } ;
typedef TYPE_3__ MP4_Box_t ;


 int MP4_Box_data_skcr_t ;
 int MP4_GET4BYTES (int ) ;
 int MP4_READBOX_ENTER (int ,int *) ;
 int MP4_READBOX_EXIT (int) ;
 int msg_Dbg (int *,char*,int ,int ,int ) ;

__attribute__((used)) static int MP4_ReadBox_skcr( stream_t *p_stream, MP4_Box_t *p_box )
{
    MP4_READBOX_ENTER( MP4_Box_data_skcr_t, ((void*)0) );

    MP4_GET4BYTES( p_box->data.p_skcr->i_init );
    MP4_GET4BYTES( p_box->data.p_skcr->i_encr );
    MP4_GET4BYTES( p_box->data.p_skcr->i_decr );
    MP4_READBOX_EXIT( 1 );
}
