#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int vlc_tick_t ;
typedef  int uint32_t ;
struct TYPE_5__ {int segment_max_length; int /*<<< orphan*/  segments_t; int /*<<< orphan*/  i_numsegs; } ;
typedef  TYPE_1__ sout_access_out_sys_t ;
struct TYPE_6__ {scalar_t__ segment_length; } ;
typedef  TYPE_2__ output_segment_t ;

/* Variables and functions */
 int FUNC0 (size_t,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static uint32_t FUNC3( sout_access_out_sys_t *p_sys )
{
    vlc_tick_t duration = 0;
    for( size_t index = 1; index <= FUNC1( &p_sys->segments_t ); index++ )
    {
        output_segment_t* segment = FUNC2( &p_sys->segments_t, FUNC1( &p_sys->segments_t ) - index );
        duration += segment->segment_length;

        if( duration >= ( 3 * p_sys->segment_max_length ) )
            return FUNC0(index, p_sys->i_numsegs);
    }
    return FUNC1( &p_sys->segments_t ) - 1;

}