
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int stream_t ;
struct TYPE_4__ {scalar_t__ i_size; scalar_t__ i_pos; int i_handler; } ;
typedef TYPE_1__ MP4_Box_t ;


 int ATOM_text ;
 int MP4_Box_data_sample_text_t ;
 int MP4_READBOX_ENTER_PARTIAL (int ,int,int *) ;
 int MP4_READBOX_EXIT (int) ;
 int MP4_ReadBoxContainerChildren (int *,TYPE_1__*,int *) ;
 scalar_t__ MP4_Seek (int *,scalar_t__) ;
 int i_read ;
 int p_peek ;

__attribute__((used)) static int MP4_ReadBox_sample_mp4s( stream_t *p_stream, MP4_Box_t *p_box )
{
    p_box->i_handler = ATOM_text;
    MP4_READBOX_ENTER_PARTIAL( MP4_Box_data_sample_text_t, 16, ((void*)0) );
    (void) p_peek;
    if( i_read < 8 )
        MP4_READBOX_EXIT( 0 );

    MP4_ReadBoxContainerChildren( p_stream, p_box, ((void*)0) );

    if ( MP4_Seek( p_stream, p_box->i_pos + p_box->i_size ) )
        MP4_READBOX_EXIT( 0 );

    MP4_READBOX_EXIT( 1 );
}
