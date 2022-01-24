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
typedef  int /*<<< orphan*/  vlc_object_t ;
typedef  scalar_t__ ssize_t ;
struct TYPE_17__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ sout_access_out_t ;
struct TYPE_18__ {struct TYPE_18__* psz_indexPath; struct TYPE_18__* psz_indexUrl; scalar_t__ i_numsegs; scalar_t__ b_delsegs; int /*<<< orphan*/  segments_t; struct TYPE_18__* key_uri; int /*<<< orphan*/  aes_ctx; TYPE_4__* ongoing_segment; TYPE_4__* full_segments; TYPE_4__** ongoing_segment_end; TYPE_4__** full_segments_end; } ;
typedef  TYPE_2__ sout_access_out_sys_t ;
struct TYPE_19__ {scalar_t__ psz_filename; int /*<<< orphan*/  i_segment_number; } ;
typedef  TYPE_3__ output_segment_t ;
struct TYPE_20__ {struct TYPE_20__* p_next; } ;
typedef  TYPE_4__ block_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__***,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*,...) ; 
 scalar_t__ FUNC8 (int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 scalar_t__ FUNC13 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC14( vlc_object_t * p_this )
{
    sout_access_out_t *p_access = (sout_access_out_t*)p_this;
    sout_access_out_sys_t *p_sys = p_access->p_sys;

    if( p_sys->ongoing_segment )
        FUNC1( &p_sys->full_segments_end, p_sys->ongoing_segment );
    p_sys->ongoing_segment = NULL;
    p_sys->ongoing_segment_end = &p_sys->ongoing_segment;

    block_t *output_block = p_sys->full_segments;
    p_sys->full_segments = NULL;
    p_sys->full_segments_end = &p_sys->full_segments;

    while( output_block )
    {
        block_t *p_next = output_block->p_next;
        output_block->p_next = NULL;

        FUNC0( p_access, output_block );
        output_block = p_next;
    }
    if( p_sys->ongoing_segment )
    {
        FUNC1( &p_sys->full_segments_end, p_sys->ongoing_segment );
        p_sys->ongoing_segment = NULL;
        p_sys->ongoing_segment_end = &p_sys->ongoing_segment;
    }

    ssize_t writevalue = FUNC13( p_access );
    FUNC7( p_access, "Writing.. %zd", writevalue );
    if( FUNC8( writevalue < 0 ) )
    {
        if( p_sys->full_segments )
            FUNC2( p_sys->full_segments );
        if( p_sys->ongoing_segment )
            FUNC2( p_sys->ongoing_segment );
    }

    FUNC3( p_access, p_sys, true );

    if( p_sys->key_uri )
    {
        FUNC6( p_sys->aes_ctx );
        FUNC5( p_sys->key_uri );
    }

    while( FUNC9( &p_sys->segments_t ) > 0 )
    {
        output_segment_t *segment = FUNC10( &p_sys->segments_t, 0 );
        FUNC11( &p_sys->segments_t, 0 );
        if( p_sys->b_delsegs && p_sys->i_numsegs && segment->psz_filename )
        {
            FUNC7( p_access, "Removing segment number %d name %s", segment->i_segment_number, segment->psz_filename );
            FUNC12( segment->psz_filename );
        }

        FUNC4( segment );
    }

    FUNC5( p_sys->psz_indexUrl );
    FUNC5( p_sys->psz_indexPath );
    FUNC5( p_sys );

    FUNC7( p_access, "livehttp access output closed" );
}