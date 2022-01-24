#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  size_t uint32_t ;
typedef  int /*<<< orphan*/  stream_t ;
struct TYPE_7__ {size_t* i_chunk_offset; size_t i_entry_count; } ;
struct TYPE_5__ {TYPE_4__* p_co64; } ;
struct TYPE_6__ {scalar_t__ i_type; TYPE_1__ data; } ;
typedef  TYPE_2__ MP4_Box_t ;

/* Variables and functions */
 scalar_t__ ATOM_stco ; 
 int /*<<< orphan*/  MP4_Box_data_co64_t ; 
 int /*<<< orphan*/  MP4_FreeBox_stco_co64 ; 
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 size_t FUNC5 (int) ; 
 size_t i_read ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,size_t) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 size_t* FUNC8 (size_t,int) ; 

__attribute__((used)) static int FUNC9( stream_t *p_stream, MP4_Box_t *p_box )
{
    const bool sixtyfour = p_box->i_type != ATOM_stco;
    uint32_t count;

    FUNC3( MP4_Box_data_co64_t, MP4_FreeBox_stco_co64 );

    FUNC2( p_box->data.p_co64 );
    FUNC0( count );

    if( (sixtyfour ? FUNC5(8) : FUNC5(4)) * count > i_read )
        FUNC4( 0 );

    p_box->data.p_co64->i_chunk_offset = FUNC8( count, sizeof(uint64_t) );
    if( FUNC7(p_box->data.p_co64->i_chunk_offset == NULL) )
        FUNC4( 0 );
    p_box->data.p_co64->i_entry_count = count;

    for( uint32_t i = 0; i < count; i++ )
    {
        if( sixtyfour )
            FUNC1( p_box->data.p_co64->i_chunk_offset[i] );
        else
            FUNC0( p_box->data.p_co64->i_chunk_offset[i] );
    }

#ifdef MP4_VERBOSE
    msg_Dbg( p_stream, "read box: \"co64\" entry-count %d",
                      p_box->data.p_co64->i_entry_count );

#endif
    FUNC4( 1 );
}