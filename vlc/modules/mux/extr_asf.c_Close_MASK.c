#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_10__ {int /*<<< orphan*/  p_access; TYPE_2__* p_sys; } ;
typedef  TYPE_1__ sout_mux_t ;
struct TYPE_11__ {struct TYPE_11__* psz_rating; struct TYPE_11__* psz_comment; struct TYPE_11__* psz_copyright; struct TYPE_11__* psz_author; struct TYPE_11__* psz_title; int /*<<< orphan*/  tracks; int /*<<< orphan*/  fmt; struct TYPE_11__* p_extra; } ;
typedef  TYPE_2__ sout_mux_sys_t ;
typedef  int /*<<< orphan*/  block_t ;
typedef  TYPE_2__ asf_track_t ;

/* Variables and functions */
 scalar_t__ VLC_SUCCESS ; 
 int /*<<< orphan*/ * FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 size_t FUNC9 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC10 (int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static void FUNC11( vlc_object_t * p_this )
{
    sout_mux_t     *p_mux = (sout_mux_t*)p_this;
    sout_mux_sys_t *p_sys = p_mux->p_sys;
    block_t  *out;

    FUNC5( p_mux, "Asf muxer closed" );

    /* Flush last packet if any */
    if( (out = FUNC1( p_mux ) ) )
    {
        FUNC7( p_mux->p_access, out );
    }

    if( ( out = FUNC2( p_mux ) ) )
    {
        FUNC7( p_mux->p_access, out );
    }

    /* rewrite header */
    if( FUNC6( p_mux->p_access, 0 ) == VLC_SUCCESS )
    {
        out = FUNC0( p_mux, false );
        FUNC7( p_mux->p_access, out );
    }


    for( size_t i = 0; i < FUNC9( &p_sys->tracks ); i++ )
    {
        asf_track_t *track = FUNC10( &p_sys->tracks, i );
        FUNC4( track->p_extra );
        FUNC3( &track->fmt );
        FUNC4( track );
    }

    FUNC8( &p_sys->tracks );
    FUNC4( p_sys->psz_title );
    FUNC4( p_sys->psz_author );
    FUNC4( p_sys->psz_copyright );
    FUNC4( p_sys->psz_comment );
    FUNC4( p_sys->psz_rating );
    FUNC4( p_sys );
}