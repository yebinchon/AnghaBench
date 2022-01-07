
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int stream_t ;
struct TYPE_6__ {TYPE_1__* p_sample_text; } ;
struct TYPE_7__ {TYPE_2__ data; int i_handler; } ;
struct TYPE_5__ {scalar_t__ i_data; int p_data; int i_data_reference_index; int i_reserved2; int i_reserved1; } ;
typedef TYPE_3__ MP4_Box_t ;


 int ATOM_text ;
 int MP4_Box_data_sample_text_t ;
 int MP4_FreeBox_sample_text ;
 int MP4_GET2BYTES (int ) ;
 int MP4_GET4BYTES (int ) ;
 int MP4_READBOX_ENTER (int ,int ) ;
 int MP4_READBOX_EXIT (int) ;
 scalar_t__ i_read ;
 int malloc (scalar_t__) ;
 int memcpy (int ,int ,scalar_t__) ;
 int msg_Dbg (int *,char*) ;
 int p_peek ;

__attribute__((used)) static int MP4_ReadBox_sample_text( stream_t *p_stream, MP4_Box_t *p_box )
{
    p_box->i_handler = ATOM_text;
    MP4_READBOX_ENTER( MP4_Box_data_sample_text_t, MP4_FreeBox_sample_text );

    MP4_GET4BYTES( p_box->data.p_sample_text->i_reserved1 );
    MP4_GET2BYTES( p_box->data.p_sample_text->i_reserved2 );

    MP4_GET2BYTES( p_box->data.p_sample_text->i_data_reference_index );

    if( i_read )
    {
        p_box->data.p_sample_text->p_data = malloc( i_read );
        if( !p_box->data.p_sample_text->p_data )
            MP4_READBOX_EXIT( 0 );
        memcpy( p_box->data.p_sample_text->p_data, p_peek, i_read );
    }
    p_box->data.p_sample_text->i_data = i_read;




    MP4_READBOX_EXIT( 1 );
}
