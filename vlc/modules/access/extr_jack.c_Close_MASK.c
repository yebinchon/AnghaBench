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
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ demux_t ;
struct TYPE_5__ {int /*<<< orphan*/  pp_jack_port_table; int /*<<< orphan*/  pp_jack_buffer; int /*<<< orphan*/  pp_jack_port_input; scalar_t__ p_jack_ringbuffer; scalar_t__ p_jack_client; scalar_t__ p_block_audio; } ;
typedef  TYPE_2__ demux_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 

__attribute__((used)) static void FUNC5( vlc_object_t *p_this )
{
    demux_t    *p_demux = ( demux_t* )p_this;
    demux_sys_t    *p_sys = p_demux->p_sys;

    FUNC4( p_demux,"Module unloaded" );
    if( p_sys->p_block_audio ) FUNC0( p_sys->p_block_audio );
    if( p_sys->p_jack_client ) FUNC2( p_sys->p_jack_client );
    if( p_sys->p_jack_ringbuffer ) FUNC3( p_sys->p_jack_ringbuffer );
    FUNC1( p_sys->pp_jack_port_input );
    FUNC1( p_sys->pp_jack_buffer );
    FUNC1( p_sys->pp_jack_port_table );
}