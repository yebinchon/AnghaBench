#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int h; int w; scalar_t__ x; scalar_t__ y; } ;
struct TYPE_9__ {TYPE_1__ mon; scalar_t__ fullscreen; } ;
struct TYPE_8__ {size_t location; int /*<<< orphan*/  y_offset; int /*<<< orphan*/  x_offset; } ;
struct TYPE_7__ {int height; int width; scalar_t__ y; scalar_t__ x; int /*<<< orphan*/  main_window; int /*<<< orphan*/  list_view; } ;
typedef  TYPE_2__ RofiViewState ;
typedef  int /*<<< orphan*/  RofiDistance ;

/* Variables and functions */
 TYPE_5__ CacheState ; 
 int /*<<< orphan*/  ROFI_ORIENTATION_HORIZONTAL ; 
 int /*<<< orphan*/  ROFI_ORIENTATION_VERTICAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  WL_CENTER 136 
#define  WL_EAST 135 
#define  WL_NORTH 134 
#define  WL_NORTH_EAST 133 
#define  WL_NORTH_WEST 132 
#define  WL_SOUTH 131 
#define  WL_SOUTH_EAST 130 
#define  WL_SOUTH_WEST 129 
#define  WL_WEST 128 
 TYPE_4__ config ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int* loc_transtable ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void FUNC5 ( RofiViewState *state )
{
    int location = FUNC4 ( FUNC0 ( state->main_window ), "location", loc_transtable[config.location] );
    int anchor   = location;
    if ( !FUNC2 ( state->list_view ) ) {
        anchor = location;
        if ( location == WL_CENTER ) {
            anchor = WL_NORTH;
        }
        else if ( location == WL_EAST ) {
            anchor = WL_NORTH_EAST;
        }
        else if ( location == WL_WEST ) {
            anchor = WL_NORTH_WEST;
        }
    }
    anchor = FUNC4 ( FUNC0 ( state->main_window ), "anchor", anchor );

    if ( CacheState.fullscreen ) {
        state->x = CacheState.mon.x;
        state->y = CacheState.mon.y;
        return;
    }
    state->y = CacheState.mon.y + ( CacheState.mon.h ) / 2;
    state->x = CacheState.mon.x + ( CacheState.mon.w ) / 2;
    // Determine window location
    switch ( location )
    {
    case WL_NORTH_WEST:
        state->x = CacheState.mon.x;
    /* FALLTHRU */
    case WL_NORTH:
        state->y = CacheState.mon.y;
        break;
    case WL_NORTH_EAST:
        state->y = CacheState.mon.y;
    /* FALLTHRU */
    case WL_EAST:
        state->x = CacheState.mon.x + CacheState.mon.w;
        break;
    case WL_SOUTH_EAST:
        state->x = CacheState.mon.x + CacheState.mon.w;
    /* FALLTHRU */
    case WL_SOUTH:
        state->y = CacheState.mon.y + CacheState.mon.h;
        break;
    case WL_SOUTH_WEST:
        state->y = CacheState.mon.y + CacheState.mon.h;
    /* FALLTHRU */
    case WL_WEST:
        state->x = CacheState.mon.x;
        break;
    case WL_CENTER:
        ;
    /* FALLTHRU */
    default:
        break;
    }
    switch ( anchor )
    {
    case WL_SOUTH_WEST:
        state->y -= state->height;
        break;
    case WL_SOUTH:
        state->x -= state->width / 2;
        state->y -= state->height;
        break;
    case WL_SOUTH_EAST:
        state->x -= state->width;
        state->y -= state->height;
        break;
    case WL_NORTH_EAST:
        state->x -= state->width;
        break;
    case WL_NORTH_WEST:
        break;
    case WL_NORTH:
        state->x -= state->width / 2;
        break;
    case WL_EAST:
        state->x -= state->width;
        state->y -= state->height / 2;
        break;
    case WL_WEST:
        state->y -= state->height / 2;
        break;
    case WL_CENTER:
        state->y -= state->height / 2;
        state->x -= state->width / 2;
        break;
    default:
        break;
    }
    // Apply offset.
    RofiDistance x = FUNC3 ( FUNC0 ( state->main_window ), "x-offset", config.x_offset );
    RofiDistance y = FUNC3 ( FUNC0 ( state->main_window ), "y-offset", config.y_offset );
    state->x += FUNC1 ( x, ROFI_ORIENTATION_HORIZONTAL );
    state->y += FUNC1 ( y, ROFI_ORIENTATION_VERTICAL );
}