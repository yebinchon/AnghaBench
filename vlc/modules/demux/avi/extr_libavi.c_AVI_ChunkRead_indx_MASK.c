#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
typedef  int /*<<< orphan*/  stream_t ;
typedef  unsigned int int32_t ;
typedef  int /*<<< orphan*/  indx_super_entry_t ;
typedef  int /*<<< orphan*/  indx_std_entry_t ;
typedef  int /*<<< orphan*/  indx_field_entry_t ;
typedef  int /*<<< orphan*/  avi_chunk_t ;
struct TYPE_9__ {TYPE_3__* super; TYPE_2__* field; TYPE_1__* std; } ;
struct TYPE_10__ {scalar_t__ i_indexsubtype; scalar_t__ i_indextype; unsigned int i_entriesinuse; unsigned int i_id; TYPE_4__ idx; scalar_t__ i_baseoffset; int /*<<< orphan*/  i_longsperentry; } ;
typedef  TYPE_5__ avi_chunk_indx_t ;
struct TYPE_8__ {unsigned int i_size; unsigned int i_duration; scalar_t__ i_offset; } ;
struct TYPE_7__ {unsigned int i_offset; unsigned int i_size; unsigned int i_offsetfield2; } ;
struct TYPE_6__ {unsigned int i_offset; unsigned int i_size; } ;

/* Variables and functions */
 scalar_t__ AVI_INDEX_2FIELD ; 
 scalar_t__ AVI_INDEX_OF_CHUNKS ; 
 scalar_t__ AVI_INDEX_OF_INDEXES ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  AVI_READCHUNK_ENTER ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC5 (unsigned int) ; 
 unsigned int FUNC6 (unsigned int,int) ; 
 void* FUNC7 (unsigned int,int) ; 
 int i_read ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,scalar_t__,scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC10( stream_t *s, avi_chunk_t *p_chk )
{
    unsigned int i_count, i;
    int          i_ret = VLC_SUCCESS;
    int32_t      i_dummy;
    FUNC5(i_dummy);
    avi_chunk_indx_t *p_indx = (avi_chunk_indx_t*)p_chk;

    AVI_READCHUNK_ENTER;

    FUNC1( p_indx->i_longsperentry );
    FUNC0 ( p_indx->i_indexsubtype );
    FUNC0 ( p_indx->i_indextype );
    FUNC2( p_indx->i_entriesinuse );

    FUNC2( p_indx->i_id );
    p_indx->idx.std     = NULL;
    p_indx->idx.field   = NULL;
    p_indx->idx.super   = NULL;

    if( p_indx->i_indextype == AVI_INDEX_OF_CHUNKS && p_indx->i_indexsubtype == 0 )
    {
        FUNC3( p_indx->i_baseoffset );
        FUNC2( i_dummy );

        i_count = FUNC6( p_indx->i_entriesinuse, i_read / 8 );
        p_indx->i_entriesinuse = i_count;
        p_indx->idx.std = FUNC7( i_count, sizeof( indx_std_entry_t ) );
        if( i_count == 0 || p_indx->idx.std )
        {
            for( i = 0; i < i_count; i++ )
            {
                FUNC2( p_indx->idx.std[i].i_offset );
                FUNC2( p_indx->idx.std[i].i_size );
            }
        }
        else i_ret = VLC_EGENERIC;
    }
    else if( p_indx->i_indextype == AVI_INDEX_OF_CHUNKS && p_indx->i_indexsubtype == AVI_INDEX_2FIELD )
    {
        FUNC3( p_indx->i_baseoffset );
        FUNC2( i_dummy );

        i_count = FUNC6( p_indx->i_entriesinuse, i_read / 12 );
        p_indx->i_entriesinuse = i_count;
        p_indx->idx.field = FUNC7( i_count, sizeof( indx_field_entry_t ) );
        if( i_count == 0 || p_indx->idx.field )
        {
            for( i = 0; i < i_count; i++ )
            {
                FUNC2( p_indx->idx.field[i].i_offset );
                FUNC2( p_indx->idx.field[i].i_size );
                FUNC2( p_indx->idx.field[i].i_offsetfield2 );
            }
        }
        else i_ret = VLC_EGENERIC;
    }
    else if( p_indx->i_indextype == AVI_INDEX_OF_INDEXES )
    {
        p_indx->i_baseoffset = 0;
        FUNC2( i_dummy );
        FUNC2( i_dummy );
        FUNC2( i_dummy );

        i_count = FUNC6( p_indx->i_entriesinuse, i_read / 16 );
        p_indx->i_entriesinuse = i_count;
        p_indx->idx.super = FUNC7( i_count, sizeof( indx_super_entry_t ) );
        if( i_count == 0 || p_indx->idx.super )
        {
            for( i = 0; i < i_count; i++ )
            {
                FUNC3( p_indx->idx.super[i].i_offset );
                FUNC2( p_indx->idx.super[i].i_size );
                FUNC2( p_indx->idx.super[i].i_duration );
            }
        }
        else i_ret = VLC_EGENERIC;
    }
    else
    {
        FUNC9( (vlc_object_t*)s, "unknown type/subtype index" );
    }

#ifdef AVI_DEBUG
    msg_Dbg( (vlc_object_t*)s, "indx: type=%d subtype=%d entry=%d",
             p_indx->i_indextype, p_indx->i_indexsubtype, p_indx->i_entriesinuse );
#endif
    FUNC4( i_ret );
}