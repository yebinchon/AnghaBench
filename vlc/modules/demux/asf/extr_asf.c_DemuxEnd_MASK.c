#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  out; int /*<<< orphan*/  s; TYPE_2__* p_sys; } ;
typedef  TYPE_1__ demux_t ;
struct TYPE_9__ {TYPE_3__** track; int /*<<< orphan*/ * meta; int /*<<< orphan*/ * p_fp; int /*<<< orphan*/ * p_root; } ;
typedef  TYPE_2__ demux_sys_t ;
struct TYPE_10__ {struct TYPE_10__* p_fmt; scalar_t__ p_es; } ;
typedef  TYPE_3__ asf_track_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int MAX_ASF_TRACKS ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6( demux_t *p_demux )
{
    demux_sys_t *p_sys = p_demux->p_sys;

    if( p_sys->p_root )
    {
        FUNC0( p_demux->s, p_sys->p_root );
        p_sys->p_root = NULL;
        p_sys->p_fp = NULL;
    }
    if( p_sys->meta )
    {
        FUNC5( p_sys->meta );
        p_sys->meta = NULL;
    }

    FUNC1( p_demux );

    for( int i = 0; i < MAX_ASF_TRACKS; i++ )
    {
        asf_track_t *tk = p_sys->track[i];

        if( tk )
        {
            if( tk->p_es )
            {
                FUNC3( p_demux->out, tk->p_es );
            }
            if ( tk->p_fmt )
            {
                FUNC2( tk->p_fmt );
                FUNC4( tk->p_fmt );
            }
            FUNC4( tk );
        }
        p_sys->track[i] = 0;
    }
}