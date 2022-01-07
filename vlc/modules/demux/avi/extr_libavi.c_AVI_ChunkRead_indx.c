
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vlc_object_t ;
typedef int stream_t ;
typedef unsigned int int32_t ;
typedef int indx_super_entry_t ;
typedef int indx_std_entry_t ;
typedef int indx_field_entry_t ;
typedef int avi_chunk_t ;
struct TYPE_9__ {TYPE_3__* super; TYPE_2__* field; TYPE_1__* std; } ;
struct TYPE_10__ {scalar_t__ i_indexsubtype; scalar_t__ i_indextype; unsigned int i_entriesinuse; unsigned int i_id; TYPE_4__ idx; scalar_t__ i_baseoffset; int i_longsperentry; } ;
typedef TYPE_5__ avi_chunk_indx_t ;
struct TYPE_8__ {unsigned int i_size; unsigned int i_duration; scalar_t__ i_offset; } ;
struct TYPE_7__ {unsigned int i_offset; unsigned int i_size; unsigned int i_offsetfield2; } ;
struct TYPE_6__ {unsigned int i_offset; unsigned int i_size; } ;


 scalar_t__ AVI_INDEX_2FIELD ;
 scalar_t__ AVI_INDEX_OF_CHUNKS ;
 scalar_t__ AVI_INDEX_OF_INDEXES ;
 int AVI_READ1BYTE (scalar_t__) ;
 int AVI_READ2BYTES (int ) ;
 int AVI_READ4BYTES (unsigned int) ;
 int AVI_READ8BYTES (scalar_t__) ;
 int AVI_READCHUNK_ENTER ;
 int AVI_READCHUNK_EXIT (int) ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int VLC_UNUSED (unsigned int) ;
 unsigned int __MIN (unsigned int,int) ;
 void* calloc (unsigned int,int) ;
 int i_read ;
 int msg_Dbg (int *,char*,scalar_t__,scalar_t__,unsigned int) ;
 int msg_Warn (int *,char*) ;

__attribute__((used)) static int AVI_ChunkRead_indx( stream_t *s, avi_chunk_t *p_chk )
{
    unsigned int i_count, i;
    int i_ret = VLC_SUCCESS;
    int32_t i_dummy;
    VLC_UNUSED(i_dummy);
    avi_chunk_indx_t *p_indx = (avi_chunk_indx_t*)p_chk;

    AVI_READCHUNK_ENTER;

    AVI_READ2BYTES( p_indx->i_longsperentry );
    AVI_READ1BYTE ( p_indx->i_indexsubtype );
    AVI_READ1BYTE ( p_indx->i_indextype );
    AVI_READ4BYTES( p_indx->i_entriesinuse );

    AVI_READ4BYTES( p_indx->i_id );
    p_indx->idx.std = ((void*)0);
    p_indx->idx.field = ((void*)0);
    p_indx->idx.super = ((void*)0);

    if( p_indx->i_indextype == AVI_INDEX_OF_CHUNKS && p_indx->i_indexsubtype == 0 )
    {
        AVI_READ8BYTES( p_indx->i_baseoffset );
        AVI_READ4BYTES( i_dummy );

        i_count = __MIN( p_indx->i_entriesinuse, i_read / 8 );
        p_indx->i_entriesinuse = i_count;
        p_indx->idx.std = calloc( i_count, sizeof( indx_std_entry_t ) );
        if( i_count == 0 || p_indx->idx.std )
        {
            for( i = 0; i < i_count; i++ )
            {
                AVI_READ4BYTES( p_indx->idx.std[i].i_offset );
                AVI_READ4BYTES( p_indx->idx.std[i].i_size );
            }
        }
        else i_ret = VLC_EGENERIC;
    }
    else if( p_indx->i_indextype == AVI_INDEX_OF_CHUNKS && p_indx->i_indexsubtype == AVI_INDEX_2FIELD )
    {
        AVI_READ8BYTES( p_indx->i_baseoffset );
        AVI_READ4BYTES( i_dummy );

        i_count = __MIN( p_indx->i_entriesinuse, i_read / 12 );
        p_indx->i_entriesinuse = i_count;
        p_indx->idx.field = calloc( i_count, sizeof( indx_field_entry_t ) );
        if( i_count == 0 || p_indx->idx.field )
        {
            for( i = 0; i < i_count; i++ )
            {
                AVI_READ4BYTES( p_indx->idx.field[i].i_offset );
                AVI_READ4BYTES( p_indx->idx.field[i].i_size );
                AVI_READ4BYTES( p_indx->idx.field[i].i_offsetfield2 );
            }
        }
        else i_ret = VLC_EGENERIC;
    }
    else if( p_indx->i_indextype == AVI_INDEX_OF_INDEXES )
    {
        p_indx->i_baseoffset = 0;
        AVI_READ4BYTES( i_dummy );
        AVI_READ4BYTES( i_dummy );
        AVI_READ4BYTES( i_dummy );

        i_count = __MIN( p_indx->i_entriesinuse, i_read / 16 );
        p_indx->i_entriesinuse = i_count;
        p_indx->idx.super = calloc( i_count, sizeof( indx_super_entry_t ) );
        if( i_count == 0 || p_indx->idx.super )
        {
            for( i = 0; i < i_count; i++ )
            {
                AVI_READ8BYTES( p_indx->idx.super[i].i_offset );
                AVI_READ4BYTES( p_indx->idx.super[i].i_size );
                AVI_READ4BYTES( p_indx->idx.super[i].i_duration );
            }
        }
        else i_ret = VLC_EGENERIC;
    }
    else
    {
        msg_Warn( (vlc_object_t*)s, "unknown type/subtype index" );
    }





    AVI_READCHUNK_EXIT( i_ret );
}
