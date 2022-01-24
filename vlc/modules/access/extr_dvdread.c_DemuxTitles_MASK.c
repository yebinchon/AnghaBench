#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int nr_of_srpts; TYPE_2__* title; } ;
typedef  TYPE_3__ tt_srpt_t ;
struct TYPE_16__ {int /*<<< orphan*/  seekpoint; int /*<<< orphan*/  i_seekpoint; } ;
typedef  TYPE_4__ seekpoint_t ;
typedef  int int32_t ;
typedef  TYPE_4__ input_title_t ;
struct TYPE_17__ {TYPE_7__* p_sys; } ;
typedef  TYPE_6__ demux_t ;
struct TYPE_18__ {int /*<<< orphan*/  titles; int /*<<< orphan*/  i_titles; TYPE_1__* p_vmg_file; } ;
typedef  TYPE_7__ demux_sys_t ;
struct TYPE_14__ {int nr_of_ptts; } ;
struct TYPE_13__ {TYPE_3__* tt_srpt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*,char*,int,...) ; 
 TYPE_4__* FUNC4 () ; 
 TYPE_4__* FUNC5 () ; 

__attribute__((used)) static void FUNC6( demux_t *p_demux, int *pi_angle )
{
    FUNC1( pi_angle );

    demux_sys_t *p_sys = p_demux->p_sys;
    input_title_t *t;
    seekpoint_t *s;

    /* Find out number of titles/chapters */
    const tt_srpt_t *tt_srpt = p_sys->p_vmg_file->tt_srpt;

    int32_t i_titles = tt_srpt->nr_of_srpts;
    FUNC3( p_demux, "number of titles: %d", i_titles );

    for( int i = 0; i < i_titles; i++ )
    {
        int32_t i_chapters = 0;
        int j;

        i_chapters = tt_srpt->title[i].nr_of_ptts;
        FUNC3( p_demux, "title %d has %d chapters", i, i_chapters );

        t = FUNC4();

        for( j = 0; j < FUNC2( i_chapters, 1 ); j++ )
        {
            s = FUNC5();
            FUNC0( t->i_seekpoint, t->seekpoint, s );
        }

        FUNC0( p_sys->i_titles, p_sys->titles, t );
    }
}