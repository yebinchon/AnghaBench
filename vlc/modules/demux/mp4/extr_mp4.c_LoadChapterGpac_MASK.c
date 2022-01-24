#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;
typedef  struct TYPE_11__   TYPE_10__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  i_time_offset; int /*<<< orphan*/ * psz_name; } ;
typedef  TYPE_2__ seekpoint_t ;
typedef  int /*<<< orphan*/  msftime_t ;
struct TYPE_14__ {TYPE_4__* p_sys; } ;
typedef  TYPE_3__ demux_t ;
struct TYPE_15__ {TYPE_7__* p_title; } ;
typedef  TYPE_4__ demux_sys_t ;
struct TYPE_16__ {int /*<<< orphan*/  seekpoint; int /*<<< orphan*/  i_seekpoint; } ;
struct TYPE_12__ {int /*<<< orphan*/  i_start; int /*<<< orphan*/  psz_name; } ;
struct TYPE_11__ {int i_chapter; TYPE_1__* chapter; } ;
typedef  int /*<<< orphan*/  MP4_Box_t ;

/* Variables and functions */
 TYPE_10__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_7__* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 TYPE_2__* FUNC7 () ; 

__attribute__((used)) static void FUNC8( demux_t  *p_demux, MP4_Box_t *p_chpl )
{
    demux_sys_t *p_sys = p_demux->p_sys;

    if( FUNC0(p_chpl)->i_chapter == 0 )
        return;

    p_sys->p_title = FUNC5();
    for( int i = 0; i < FUNC0(p_chpl)->i_chapter && p_sys->p_title; i++ )
    {
        seekpoint_t *s = FUNC7();
        if( s == NULL) continue;

        s->psz_name = FUNC4( FUNC0(p_chpl)->chapter[i].psz_name );
        if( s->psz_name == NULL)
        {
            FUNC6( s );;
            continue;
        }

        FUNC1( s->psz_name );
        msftime_t offset = FUNC0(p_chpl)->chapter[i].i_start;
        s->i_time_offset = FUNC3(offset);
        FUNC2( p_sys->p_title->i_seekpoint, p_sys->p_title->seekpoint, s );
    }
}