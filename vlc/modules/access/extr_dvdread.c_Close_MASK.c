#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_5__ {scalar_t__ es; int /*<<< orphan*/  fmt; scalar_t__ b_configured; } ;
typedef  TYPE_1__ ps_track_t ;
struct TYPE_6__ {int /*<<< orphan*/  out; TYPE_3__* p_sys; } ;
typedef  TYPE_2__ demux_t ;
struct TYPE_7__ {int i_titles; int /*<<< orphan*/  p_dvdread; scalar_t__ p_vmg_file; scalar_t__ p_vts_file; scalar_t__ p_title; int /*<<< orphan*/ * titles; TYPE_1__* tk; } ;
typedef  TYPE_3__ demux_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int PS_TK_COUNT ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8( vlc_object_t *p_this )
{
    demux_t     *p_demux = (demux_t*)p_this;
    demux_sys_t *p_sys = p_demux->p_sys;

    for( int i = 0; i < PS_TK_COUNT; i++ )
    {
        ps_track_t *tk = &p_sys->tk[i];
        if( tk->b_configured )
        {
            FUNC3( &tk->fmt );
            if( tk->es ) FUNC4( p_demux->out, tk->es );
        }
    }

    /* Free the array of titles */
    for( int i = 0; i < p_sys->i_titles; i++ )
        FUNC7( p_sys->titles[i] );
    FUNC2( p_sys->i_titles, p_sys->titles );

    /* Close libdvdread */
    if( p_sys->p_title ) FUNC1( p_sys->p_title );
    if( p_sys->p_vts_file ) FUNC6( p_sys->p_vts_file );
    if( p_sys->p_vmg_file ) FUNC6( p_sys->p_vmg_file );
    FUNC0( p_sys->p_dvdread );

    FUNC5( p_sys );
}