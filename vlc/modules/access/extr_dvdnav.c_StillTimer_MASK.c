#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int b_enabled; int /*<<< orphan*/  lock; } ;
struct TYPE_4__ {TYPE_1__ still; int /*<<< orphan*/  dvdnav; } ;
typedef  TYPE_2__ demux_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4( void *p_data )
{
    demux_sys_t    *p_sys = p_data;

    FUNC2( &p_sys->still.lock );
    if( FUNC1(p_sys->still.b_enabled) )
    {
        p_sys->still.b_enabled = false;
        FUNC0( p_sys->dvdnav );
    }
    FUNC3( &p_sys->still.lock );
}