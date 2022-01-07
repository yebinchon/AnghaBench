
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t uint32_t ;
typedef int stream_t ;
typedef int int32_t ;
struct TYPE_7__ {size_t* pi_sample_count; size_t* pi_sample_delta; size_t i_entry_count; } ;
struct TYPE_5__ {TYPE_4__* p_stts; } ;
struct TYPE_6__ {TYPE_1__ data; } ;
typedef TYPE_2__ MP4_Box_t ;


 int MP4_Box_data_stts_t ;
 int MP4_FreeBox_stts ;
 int MP4_GET4BYTES (size_t) ;
 int MP4_GETVERSIONFLAGS (TYPE_4__*) ;
 int MP4_READBOX_ENTER (int ,int ) ;
 int MP4_READBOX_EXIT (int) ;
 size_t UINT64_C (int) ;
 size_t i_read ;
 int msg_Dbg (int *,char*,size_t) ;
 void* vlc_alloc (size_t,int) ;

__attribute__((used)) static int MP4_ReadBox_stts( stream_t *p_stream, MP4_Box_t *p_box )
{
    uint32_t count;

    MP4_READBOX_ENTER( MP4_Box_data_stts_t, MP4_FreeBox_stts );

    MP4_GETVERSIONFLAGS( p_box->data.p_stts );
    MP4_GET4BYTES( count );

    if( UINT64_C(8) * count > i_read )
    {

        MP4_READBOX_EXIT( 0 );
    }

    p_box->data.p_stts->pi_sample_count = vlc_alloc( count, sizeof(uint32_t) );
    p_box->data.p_stts->pi_sample_delta = vlc_alloc( count, sizeof(int32_t) );
    p_box->data.p_stts->i_entry_count = count;

    if( p_box->data.p_stts->pi_sample_count == ((void*)0)
     || p_box->data.p_stts->pi_sample_delta == ((void*)0) )
    {
        MP4_READBOX_EXIT( 0 );
    }

    for( uint32_t i = 0; i < count; i++ )
    {
        MP4_GET4BYTES( p_box->data.p_stts->pi_sample_count[i] );
        MP4_GET4BYTES( p_box->data.p_stts->pi_sample_delta[i] );
    }






    MP4_READBOX_EXIT( 1 );
}
