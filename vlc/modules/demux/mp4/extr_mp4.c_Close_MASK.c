#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_7__ {int /*<<< orphan*/  out; TYPE_2__* p_sys; } ;
typedef  TYPE_1__ demux_t ;
struct TYPE_8__ {unsigned int i_tracks; struct TYPE_8__* track; int /*<<< orphan*/  p_fragsindex; scalar_t__ p_meta; scalar_t__ p_title; int /*<<< orphan*/  p_root; } ;
typedef  TYPE_2__ demux_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 

__attribute__((used)) static void FUNC8 ( vlc_object_t * p_this )
{
    demux_t *  p_demux = (demux_t *)p_this;
    demux_sys_t *p_sys = p_demux->p_sys;
    unsigned int i_track;

    FUNC5( p_demux, "freeing all memory" );

    FUNC0( p_sys );

    FUNC1( p_sys->p_root );

    if( p_sys->p_title )
        FUNC6( p_sys->p_title );

    if( p_sys->p_meta )
        FUNC7( p_sys->p_meta );

    FUNC2( p_sys->p_fragsindex );

    for( i_track = 0; i_track < p_sys->i_tracks; i_track++ )
        FUNC3( p_demux->out, &p_sys->track[i_track] );
    FUNC4( p_sys->track );

    FUNC4( p_sys );
}