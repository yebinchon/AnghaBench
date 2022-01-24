#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vlc_tick_t ;
typedef  scalar_t__ ssize_t ;
struct TYPE_12__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ sout_access_out_t ;
struct TYPE_13__ {scalar_t__ i_handle; scalar_t__ segment_max_length; int /*<<< orphan*/  ongoing_segment; int /*<<< orphan*/  full_segments; } ;
typedef  TYPE_2__ sout_access_out_sys_t ;
struct TYPE_14__ {scalar_t__ i_length; } ;
typedef  TYPE_3__ block_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_2__*,int) ; 
 scalar_t__ FUNC3 (TYPE_1__*,TYPE_2__*) ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC6( sout_access_out_t *p_access, block_t *p_buffer )
{
    sout_access_out_sys_t *p_sys = p_access->p_sys;
    ssize_t writevalue = 0;

    vlc_tick_t current_length = 0;
    vlc_tick_t ongoing_length = 0;

    FUNC0( p_sys->full_segments, NULL, NULL, &current_length );
    FUNC0( p_sys->ongoing_segment, NULL, NULL, &ongoing_length );

    if( p_sys->i_handle > 0 &&
       (( p_buffer->i_length + current_length + ongoing_length ) >= p_sys->segment_max_length ) )
    {
        writevalue = FUNC5( p_access );
        if( FUNC4( writevalue < 0 ) )
        {
            FUNC1 ( p_buffer );
            return -1;
        }
        FUNC2( p_access, p_sys, false );
        return writevalue;
    }

    if ( FUNC4( p_sys->i_handle < 0 ) )
    {
        if ( FUNC3( p_access, p_sys ) < 0 )
           return -1;
    }
    return writevalue;
}