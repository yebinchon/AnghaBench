
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int stream_t ;
struct TYPE_11__ {scalar_t__ i_version; scalar_t__ i_entry_count; } ;
struct TYPE_9__ {TYPE_6__* p_lcont; } ;
struct TYPE_10__ {int i_size; scalar_t__ i_pos; TYPE_1__ data; int i_type; } ;
typedef TYPE_2__ MP4_Box_t ;


 int MP4_BoxAddChild (TYPE_2__*,TYPE_2__*) ;
 int MP4_Box_data_lcont_t ;
 int MP4_GET4BYTES (scalar_t__) ;
 int MP4_GETVERSIONFLAGS (TYPE_6__*) ;
 int MP4_READBOX_ENTER_PARTIAL (int ,int,int *) ;
 int MP4_READBOX_EXIT (int) ;
 TYPE_2__* MP4_ReadBox (int *,TYPE_2__*) ;
 scalar_t__ MP4_Seek (int *,scalar_t__) ;
 int i_read ;
 int msg_Dbg (int *,char*,char*,scalar_t__) ;

__attribute__((used)) static int MP4_ReadBox_LtdContainer( stream_t *p_stream, MP4_Box_t *p_box )
{
    MP4_READBOX_ENTER_PARTIAL( MP4_Box_data_lcont_t, 16, ((void*)0) );
    if( i_read < 8 )
        MP4_READBOX_EXIT( 0 );

    MP4_GETVERSIONFLAGS( p_box->data.p_lcont );
    if( p_box->data.p_lcont->i_version != 0 )
        MP4_READBOX_EXIT( 0 );
    MP4_GET4BYTES( p_box->data.p_lcont->i_entry_count );

    uint32_t i_entry = 0;
    i_read = p_box->i_size - 16;
    while (i_read > 8 && i_entry < p_box->data.p_lcont->i_entry_count )
    {
        MP4_Box_t *p_childbox = MP4_ReadBox( p_stream, p_box );
        if( !p_childbox )
            break;
        MP4_BoxAddChild( p_box, p_childbox );
        i_entry++;

        if( i_read < p_childbox->i_size )
            MP4_READBOX_EXIT( 0 );

        i_read -= p_childbox->i_size;
    }

    if (i_entry != p_box->data.p_lcont->i_entry_count)
        p_box->data.p_lcont->i_entry_count = i_entry;







    if ( MP4_Seek( p_stream, p_box->i_pos + p_box->i_size ) )
        MP4_READBOX_EXIT( 0 );

    MP4_READBOX_EXIT( 1 );
}
