#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vlc_tick_t ;
typedef  int /*<<< orphan*/  es_out_t ;
struct TYPE_3__ {scalar_t__ i_scr; int /*<<< orphan*/  tk; } ;
typedef  TYPE_1__ demux_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ VLC_TICK_INVALID ; 
 scalar_t__ FUNC2 (scalar_t__) ; 

__attribute__((used)) static void FUNC3( demux_sys_t *p_sys, es_out_t *out, vlc_tick_t i_scr )
{
    if( p_sys->i_scr != VLC_TICK_INVALID &&
        FUNC2( p_sys->i_scr - i_scr ) > FUNC1(1) )
        FUNC0( p_sys->tk, out );
}