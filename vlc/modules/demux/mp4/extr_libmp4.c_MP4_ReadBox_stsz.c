
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t uint32_t ;
typedef int stream_t ;
struct TYPE_7__ {size_t i_sample_size; size_t i_sample_count; size_t* i_entry_size; } ;
struct TYPE_5__ {TYPE_4__* p_stsz; } ;
struct TYPE_6__ {TYPE_1__ data; } ;
typedef TYPE_2__ MP4_Box_t ;


 int MP4_Box_data_stsz_t ;
 int MP4_FreeBox_stsz ;
 int MP4_GET4BYTES (size_t) ;
 int MP4_GETVERSIONFLAGS (TYPE_4__*) ;
 int MP4_READBOX_ENTER (int ,int ) ;
 int MP4_READBOX_EXIT (int) ;
 size_t UINT64_C (int) ;
 size_t i_read ;
 int msg_Dbg (int *,char*,scalar_t__,size_t) ;
 scalar_t__ unlikely (int) ;
 size_t* vlc_alloc (size_t,int) ;

__attribute__((used)) static int MP4_ReadBox_stsz( stream_t *p_stream, MP4_Box_t *p_box )
{
    uint32_t count;

    MP4_READBOX_ENTER( MP4_Box_data_stsz_t, MP4_FreeBox_stsz );

    MP4_GETVERSIONFLAGS( p_box->data.p_stsz );

    MP4_GET4BYTES( p_box->data.p_stsz->i_sample_size );
    MP4_GET4BYTES( count );
    p_box->data.p_stsz->i_sample_count = count;

    if( p_box->data.p_stsz->i_sample_size == 0 )
    {
        if( UINT64_C(4) * count > i_read )
            MP4_READBOX_EXIT( 0 );

        p_box->data.p_stsz->i_entry_size =
            vlc_alloc( count, sizeof(uint32_t) );
        if( unlikely( !p_box->data.p_stsz->i_entry_size ) )
            MP4_READBOX_EXIT( 0 );

        for( uint32_t i = 0; i < count; i++ )
        {
            MP4_GET4BYTES( p_box->data.p_stsz->i_entry_size[i] );
        }
    }
    else
        p_box->data.p_stsz->i_entry_size = ((void*)0);







    MP4_READBOX_EXIT( 1 );
}
