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
struct TYPE_2__ {scalar_t__ repaint_source; int /*<<< orphan*/  count; } ;

/* Variables and functions */
 TYPE_1__ CacheState ; 
 int /*<<< orphan*/  G_PRIORITY_HIGH_IDLE ; 
 scalar_t__ current_active_menu ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rofi_view_repaint ; 

void FUNC2 ( void  )
{
    if ( current_active_menu && CacheState.repaint_source == 0 ) {
        CacheState.count++;
        FUNC0 ( "redraw %llu", CacheState.count );
        CacheState.repaint_source = FUNC1 (  G_PRIORITY_HIGH_IDLE, rofi_view_repaint, NULL, NULL );
    }
}