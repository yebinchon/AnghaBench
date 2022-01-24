#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ sout_mux_t ;
struct TYPE_18__ {int i_streams; int i_movi_size; int i_idx1_size; int /*<<< orphan*/ * stream; } ;
typedef  TYPE_2__ sout_mux_sys_t ;
struct TYPE_19__ {TYPE_4__* b; } ;
typedef  TYPE_3__ bo_t ;
struct TYPE_20__ {int i_buffer; } ;
typedef  TYPE_4__ block_t ;

/* Variables and functions */
 int /*<<< orphan*/  HDR_BASE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int,int) ; 

__attribute__((used)) static block_t *FUNC8( sout_mux_t *p_mux )
{
    sout_mux_sys_t      *p_sys = p_mux->p_sys;
    int                 i_stream;
    int                 i_junk;
    bo_t                bo;

    struct
    {
        int i_riffsize;
        int i_hdrllistsize;
        int i_hdrldatastart;
    } offsets;

    if (! FUNC6( &bo, HDR_BASE_SIZE ) )
        return NULL;

    FUNC5( &bo, "RIFF" );
    offsets.i_riffsize = bo.b->i_buffer;
    FUNC3( &bo, 0xEFBEADDE );
    FUNC5( &bo, "AVI " );

    FUNC5( &bo, "LIST" );
    /* HDRL List size should exclude following data in HDR buffer
     *  -12 (RIFF, RIFF size, 'AVI ' tag),
     *  - 8 (hdr1 LIST tag and its size)
     *  - 12 (movi LIST tag, size, 'movi' listType )
     */
    offsets.i_hdrllistsize = bo.b->i_buffer;
    FUNC3( &bo, 0xEFBEADDE );
    FUNC5( &bo, "hdrl" );
    offsets.i_hdrldatastart = bo.b->i_buffer;

    FUNC1( p_mux, &bo );
    for( i_stream = 0; i_stream < p_sys->i_streams; i_stream++ )
    {
        FUNC2( &bo, &p_sys->stream[i_stream] );
    }

    /* align on 16 bytes */
    int i_align = ( ( bo.b->i_buffer + 12 + 0xE ) & ~ 0xF );
    i_junk = i_align - bo.b->i_buffer;
    FUNC5( &bo, "JUNK" );
    FUNC3( &bo, i_junk );
    for( int i=0; i< i_junk; i++ )
    {
        FUNC4( &bo, 0 );
    }

    /* Now set hdrl size */
    FUNC7( &bo, offsets.i_hdrllistsize,
                 bo.b->i_buffer - offsets.i_hdrldatastart );

    FUNC0( p_mux, &bo );

    FUNC5( &bo, "LIST" );
    FUNC3( &bo, p_sys->i_movi_size + 4 );
    FUNC5( &bo, "movi" );

    /* Now set RIFF size */
    FUNC7( &bo, offsets.i_riffsize, bo.b->i_buffer - 8
                 + p_sys->i_movi_size + p_sys->i_idx1_size );

    return( bo.b );
}