#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ idle_timeout; } ;

/* Variables and functions */
 TYPE_1__ CacheState ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rofi_view_reload_idle ; 

void FUNC1 ( void  )
{
    // @TODO add check if current view is equal to the callee
    if ( CacheState.idle_timeout == 0 ) {
        CacheState.idle_timeout = FUNC0 ( 1000 / 10, rofi_view_reload_idle, NULL );
    }
}