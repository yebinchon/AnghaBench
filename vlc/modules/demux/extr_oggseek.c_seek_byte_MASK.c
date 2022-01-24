#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_4__ {int /*<<< orphan*/  s; TYPE_2__* p_sys; } ;
typedef  TYPE_1__ demux_t ;
struct TYPE_5__ {int b_page_waiting; int /*<<< orphan*/  i_input_position; int /*<<< orphan*/  oy; } ;
typedef  TYPE_2__ demux_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2( demux_t *p_demux, int64_t i_pos )
{
    demux_sys_t *p_sys  = p_demux->p_sys;

    if ( ! FUNC1( p_demux->s, i_pos ) )
    {
        FUNC0( &p_sys->oy );

        p_sys->i_input_position = i_pos;
        p_sys->b_page_waiting = false;
    }
}