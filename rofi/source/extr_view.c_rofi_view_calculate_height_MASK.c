#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  widget ;
struct TYPE_5__ {int h; } ;
struct TYPE_7__ {scalar_t__ fullscreen; TYPE_1__ mon; } ;
struct TYPE_6__ {int /*<<< orphan*/  main_window; } ;
typedef  TYPE_2__ RofiViewState ;
typedef  int /*<<< orphan*/  RofiDistance ;

/* Variables and functions */
 TYPE_4__ CacheState ; 
 int /*<<< orphan*/  ROFI_ORIENTATION_VERTICAL ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4 ( RofiViewState *state )
{
    if ( CacheState.fullscreen == TRUE ) {
        return CacheState.mon.h;
    }

    RofiDistance h      = FUNC2 ( FUNC0 ( state->main_window ), "height", 0 );
    unsigned int height = FUNC1 ( h, ROFI_ORIENTATION_VERTICAL );
    // If height is set, return it.
    if ( height > 0 ) {
        return height;
    }
    // Autosize based on widgets.
    widget *main_window = FUNC0 ( state->main_window );
    return FUNC3 ( main_window );
}