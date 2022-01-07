
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int stream_t ;
struct TYPE_6__ {TYPE_1__* p_dcom; } ;
struct TYPE_7__ {TYPE_2__ data; } ;
struct TYPE_5__ {int i_algorithm; } ;
typedef TYPE_3__ MP4_Box_t ;


 int MP4_Box_data_dcom_t ;
 int MP4_GETFOURCC (int ) ;
 int MP4_READBOX_ENTER (int ,int *) ;
 int MP4_READBOX_EXIT (int) ;
 int msg_Dbg (int *,char*,char*) ;

__attribute__((used)) static int MP4_ReadBox_dcom( stream_t *p_stream, MP4_Box_t *p_box )
{
    MP4_READBOX_ENTER( MP4_Box_data_dcom_t, ((void*)0) );

    MP4_GETFOURCC( p_box->data.p_dcom->i_algorithm );





    MP4_READBOX_EXIT( 1 );
}
