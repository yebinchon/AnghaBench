#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
typedef  int /*<<< orphan*/  stream_t ;
typedef  int /*<<< orphan*/  int64_t ;
typedef  int /*<<< orphan*/  idx1_entry_t ;
struct TYPE_7__ {unsigned int i_entry_count; unsigned int i_entry_max; TYPE_4__* entry; } ;
struct TYPE_6__ {scalar_t__ i_chunk_size; } ;
struct TYPE_8__ {TYPE_2__ idx1; TYPE_1__ common; } ;
typedef  TYPE_3__ avi_chunk_t ;
struct TYPE_9__ {int /*<<< orphan*/  i_length; int /*<<< orphan*/  i_pos; int /*<<< orphan*/  i_flags; int /*<<< orphan*/  i_fourcc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AVI_READCHUNK_ENTER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VLC_EGENERIC ; 
 int /*<<< orphan*/  VLC_SUCCESS ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC4 (unsigned int,int) ; 
 int /*<<< orphan*/  i_read ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,unsigned int) ; 

__attribute__((used)) static int FUNC6( stream_t *s, avi_chunk_t *p_chk )
{
    unsigned int i_count, i_index;

    AVI_READCHUNK_ENTER;

    i_count = FUNC3( (int64_t)p_chk->common.i_chunk_size, i_read ) / 16;

    p_chk->idx1.i_entry_count = i_count;
    p_chk->idx1.i_entry_max   = i_count;
    if( i_count > 0 )
    {
        p_chk->idx1.entry = FUNC4( i_count, sizeof( idx1_entry_t ) );
        if( !p_chk->idx1.entry )
            FUNC1( VLC_EGENERIC );

        for( i_index = 0; i_index < i_count ; i_index++ )
        {
            FUNC2( p_chk->idx1.entry[i_index].i_fourcc );
            FUNC0( p_chk->idx1.entry[i_index].i_flags );
            FUNC0( p_chk->idx1.entry[i_index].i_pos );
            FUNC0( p_chk->idx1.entry[i_index].i_length );
        }
    }
    else
    {
        p_chk->idx1.entry = NULL;
    }
#ifdef AVI_DEBUG
    msg_Dbg( (vlc_object_t*)s, "idx1: index entry:%d", i_count );
#endif
    FUNC1( VLC_SUCCESS );
}