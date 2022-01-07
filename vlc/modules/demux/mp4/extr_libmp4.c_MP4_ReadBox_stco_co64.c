
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
typedef size_t uint32_t ;
typedef int stream_t ;
struct TYPE_7__ {size_t* i_chunk_offset; size_t i_entry_count; } ;
struct TYPE_5__ {TYPE_4__* p_co64; } ;
struct TYPE_6__ {scalar_t__ i_type; TYPE_1__ data; } ;
typedef TYPE_2__ MP4_Box_t ;


 scalar_t__ ATOM_stco ;
 int MP4_Box_data_co64_t ;
 int MP4_FreeBox_stco_co64 ;
 int MP4_GET4BYTES (size_t) ;
 int MP4_GET8BYTES (size_t) ;
 int MP4_GETVERSIONFLAGS (TYPE_4__*) ;
 int MP4_READBOX_ENTER (int ,int ) ;
 int MP4_READBOX_EXIT (int) ;
 size_t UINT64_C (int) ;
 size_t i_read ;
 int msg_Dbg (int *,char*,size_t) ;
 scalar_t__ unlikely (int ) ;
 size_t* vlc_alloc (size_t,int) ;

__attribute__((used)) static int MP4_ReadBox_stco_co64( stream_t *p_stream, MP4_Box_t *p_box )
{
    const bool sixtyfour = p_box->i_type != ATOM_stco;
    uint32_t count;

    MP4_READBOX_ENTER( MP4_Box_data_co64_t, MP4_FreeBox_stco_co64 );

    MP4_GETVERSIONFLAGS( p_box->data.p_co64 );
    MP4_GET4BYTES( count );

    if( (sixtyfour ? UINT64_C(8) : UINT64_C(4)) * count > i_read )
        MP4_READBOX_EXIT( 0 );

    p_box->data.p_co64->i_chunk_offset = vlc_alloc( count, sizeof(uint64_t) );
    if( unlikely(p_box->data.p_co64->i_chunk_offset == ((void*)0)) )
        MP4_READBOX_EXIT( 0 );
    p_box->data.p_co64->i_entry_count = count;

    for( uint32_t i = 0; i < count; i++ )
    {
        if( sixtyfour )
            MP4_GET8BYTES( p_box->data.p_co64->i_chunk_offset[i] );
        else
            MP4_GET4BYTES( p_box->data.p_co64->i_chunk_offset[i] );
    }






    MP4_READBOX_EXIT( 1 );
}
