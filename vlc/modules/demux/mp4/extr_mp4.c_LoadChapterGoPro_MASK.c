#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_8__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  i_time_offset; int /*<<< orphan*/  psz_name; } ;
typedef  TYPE_1__ seekpoint_t ;
struct TYPE_10__ {TYPE_3__* p_sys; } ;
typedef  TYPE_2__ demux_t ;
struct TYPE_11__ {TYPE_5__* p_title; } ;
typedef  TYPE_3__ demux_sys_t ;
struct TYPE_13__ {unsigned int i_chapter_count; int /*<<< orphan*/ * pi_chapter_start; } ;
struct TYPE_12__ {int /*<<< orphan*/  seekpoint; int /*<<< orphan*/  i_seekpoint; } ;
typedef  int /*<<< orphan*/  MP4_Box_t ;

/* Variables and functions */
 TYPE_8__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*,unsigned int) ; 
 TYPE_5__* FUNC5 () ; 
 TYPE_1__* FUNC6 () ; 

__attribute__((used)) static void FUNC7( demux_t *p_demux, MP4_Box_t *p_hmmt )
{
    demux_sys_t *p_sys = p_demux->p_sys;

    p_sys->p_title = FUNC5();
    if( p_sys->p_title )
        for( unsigned i = 0; i < FUNC0(p_hmmt)->i_chapter_count; i++ )
        {
            seekpoint_t *s = FUNC6();
            if( s )
            {
                if( FUNC4( &s->psz_name, "HiLight tag #%u", i+1 ) != -1 )
                    FUNC1( s->psz_name );

                /* HiLights are stored in ms so we convert them to µs */
                s->i_time_offset = FUNC3( FUNC0(p_hmmt)->pi_chapter_start[i] );
                FUNC2( p_sys->p_title->i_seekpoint, p_sys->p_title->seekpoint, s );
            }
        }
}