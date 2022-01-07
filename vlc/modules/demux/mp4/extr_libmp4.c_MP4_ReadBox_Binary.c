
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int stream_t ;
struct TYPE_6__ {TYPE_1__* p_binary; } ;
struct TYPE_7__ {TYPE_2__ data; } ;
struct TYPE_5__ {scalar_t__ i_blob; scalar_t__ p_blob; } ;
typedef TYPE_3__ MP4_Box_t ;


 int MP4_Box_data_binary_t ;
 int MP4_FreeBox_Binary ;
 int MP4_READBOX_ENTER (int ,int ) ;
 int MP4_READBOX_EXIT (int) ;
 int UINT32_MAX ;
 scalar_t__ __MIN (scalar_t__,int ) ;
 scalar_t__ i_read ;
 scalar_t__ malloc (scalar_t__) ;
 int memcpy (scalar_t__,int ,scalar_t__) ;
 int p_peek ;

__attribute__((used)) static int MP4_ReadBox_Binary( stream_t *p_stream, MP4_Box_t *p_box )
{
    MP4_READBOX_ENTER( MP4_Box_data_binary_t, MP4_FreeBox_Binary );
    i_read = __MIN( i_read, UINT32_MAX );
    if ( i_read > 0 )
    {
        p_box->data.p_binary->p_blob = malloc( i_read );
        if ( p_box->data.p_binary->p_blob )
        {
            memcpy( p_box->data.p_binary->p_blob, p_peek, i_read );
            p_box->data.p_binary->i_blob = i_read;
        }
    }
    MP4_READBOX_EXIT( 1 );
}
