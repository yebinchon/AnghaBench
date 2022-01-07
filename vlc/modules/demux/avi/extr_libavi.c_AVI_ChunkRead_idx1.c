
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vlc_object_t ;
typedef int stream_t ;
typedef int int64_t ;
typedef int idx1_entry_t ;
struct TYPE_7__ {unsigned int i_entry_count; unsigned int i_entry_max; TYPE_4__* entry; } ;
struct TYPE_6__ {scalar_t__ i_chunk_size; } ;
struct TYPE_8__ {TYPE_2__ idx1; TYPE_1__ common; } ;
typedef TYPE_3__ avi_chunk_t ;
struct TYPE_9__ {int i_length; int i_pos; int i_flags; int i_fourcc; } ;


 int AVI_READ4BYTES (int ) ;
 int AVI_READCHUNK_ENTER ;
 int AVI_READCHUNK_EXIT (int ) ;
 int AVI_READFOURCC (int ) ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int __MIN (int ,int ) ;
 TYPE_4__* calloc (unsigned int,int) ;
 int i_read ;
 int msg_Dbg (int *,char*,unsigned int) ;

__attribute__((used)) static int AVI_ChunkRead_idx1( stream_t *s, avi_chunk_t *p_chk )
{
    unsigned int i_count, i_index;

    AVI_READCHUNK_ENTER;

    i_count = __MIN( (int64_t)p_chk->common.i_chunk_size, i_read ) / 16;

    p_chk->idx1.i_entry_count = i_count;
    p_chk->idx1.i_entry_max = i_count;
    if( i_count > 0 )
    {
        p_chk->idx1.entry = calloc( i_count, sizeof( idx1_entry_t ) );
        if( !p_chk->idx1.entry )
            AVI_READCHUNK_EXIT( VLC_EGENERIC );

        for( i_index = 0; i_index < i_count ; i_index++ )
        {
            AVI_READFOURCC( p_chk->idx1.entry[i_index].i_fourcc );
            AVI_READ4BYTES( p_chk->idx1.entry[i_index].i_flags );
            AVI_READ4BYTES( p_chk->idx1.entry[i_index].i_pos );
            AVI_READ4BYTES( p_chk->idx1.entry[i_index].i_length );
        }
    }
    else
    {
        p_chk->idx1.entry = ((void*)0);
    }



    AVI_READCHUNK_EXIT( VLC_SUCCESS );
}
