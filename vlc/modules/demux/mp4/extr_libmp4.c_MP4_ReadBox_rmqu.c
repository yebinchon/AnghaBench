
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int stream_t ;
struct TYPE_6__ {TYPE_1__* p_rmqu; } ;
struct TYPE_7__ {TYPE_2__ data; } ;
struct TYPE_5__ {int i_quality; } ;
typedef TYPE_3__ MP4_Box_t ;


 int MP4_Box_data_rmqu_t ;
 int MP4_GET4BYTES (int ) ;
 int MP4_READBOX_ENTER (int ,int *) ;
 int MP4_READBOX_EXIT (int) ;
 int msg_Dbg (int *,char*,int ) ;

__attribute__((used)) static int MP4_ReadBox_rmqu( stream_t *p_stream, MP4_Box_t *p_box )
{
    MP4_READBOX_ENTER( MP4_Box_data_rmqu_t, ((void*)0) );

    MP4_GET4BYTES( p_box->data.p_rmqu->i_quality );






    MP4_READBOX_EXIT( 1 );
}
