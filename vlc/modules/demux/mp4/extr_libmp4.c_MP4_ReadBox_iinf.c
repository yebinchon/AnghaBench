
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
typedef int stream_t ;
struct TYPE_11__ {TYPE_1__* p_iinf; } ;
struct TYPE_12__ {int i_size; int i_pos; TYPE_2__ data; } ;
struct TYPE_10__ {scalar_t__ i_entry_count; } ;
typedef TYPE_3__ MP4_Box_t ;


 int MP4_BoxAddChild (TYPE_3__*,TYPE_3__*) ;
 int MP4_BoxFree (TYPE_3__*) ;
 int MP4_Box_data_iinf_t ;
 int MP4_GET1BYTE (scalar_t__) ;
 int MP4_GET2BYTES (scalar_t__) ;
 int MP4_GET3BYTES (scalar_t__) ;
 int MP4_GET4BYTES (scalar_t__) ;
 int MP4_READBOX_ENTER_PARTIAL (int ,size_t,int *) ;
 int MP4_READBOX_EXIT (int) ;
 TYPE_3__* MP4_ReadBox (int *,TYPE_3__*) ;
 scalar_t__ MP4_Seek (int *,int) ;
 int VLC_UNUSED (scalar_t__) ;
 int assert (int) ;
 int i_read ;
 size_t vlc_stream_Peek (int *,scalar_t__ const**,int) ;

__attribute__((used)) static int MP4_ReadBox_iinf( stream_t *p_stream, MP4_Box_t *p_box )
{
    const uint8_t *p_versionpeek;
    size_t i_peek = vlc_stream_Peek( p_stream, &p_versionpeek, 9 );
    if( i_peek < 9 )
        return 0;

    size_t i_header = 12 + (( p_versionpeek[8] == 0 ) ? 2 : 4);
    MP4_READBOX_ENTER_PARTIAL( MP4_Box_data_iinf_t, i_header, ((void*)0) );
    if( i_read + 8 < i_header )
        MP4_READBOX_EXIT( 0 );

    uint8_t i_version;
    uint32_t i_flags;
    MP4_GET1BYTE( i_version );
    MP4_GET3BYTES( i_flags ); VLC_UNUSED(i_flags);
    if( i_version > 2 )
        MP4_READBOX_EXIT( 0 );

    if( i_version == 0 )
        MP4_GET2BYTES( p_box->data.p_iinf->i_entry_count );
    else
        MP4_GET4BYTES( p_box->data.p_iinf->i_entry_count );

    assert( i_read == 0 );

    uint32_t i = 0;
    uint64_t i_remain = p_box->i_size - i_header;
    while ( i_remain > 8 && i < p_box->data.p_iinf->i_entry_count )
    {
        MP4_Box_t *p_childbox = MP4_ReadBox( p_stream, p_box );
        if( !p_childbox || i_remain < p_childbox->i_size )
        {
            MP4_BoxFree( p_childbox );
            p_box->data.p_iinf->i_entry_count = i;
            break;
        }

        MP4_BoxAddChild( p_box, p_childbox );
        i_remain -= p_childbox->i_size;
        i++;
    }

    if ( MP4_Seek( p_stream, p_box->i_pos + p_box->i_size ) )
        MP4_READBOX_EXIT( 0 );

    MP4_READBOX_EXIT( 1 );
}
