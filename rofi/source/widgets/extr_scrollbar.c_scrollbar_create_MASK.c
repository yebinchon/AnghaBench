#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  widget ;
struct TYPE_6__ {int /*<<< orphan*/  get_desired_height; int /*<<< orphan*/  motion_notify; int /*<<< orphan*/  trigger_action; int /*<<< orphan*/  free; int /*<<< orphan*/  draw; int /*<<< orphan*/  h; scalar_t__ w; scalar_t__ y; scalar_t__ x; } ;
struct TYPE_7__ {int length; int pos_length; scalar_t__ pos; TYPE_1__ widget; int /*<<< orphan*/  width; } ;
typedef  TYPE_2__ scrollbar ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_SCROLLBAR_WIDTH ; 
 int /*<<< orphan*/  ROFI_ORIENTATION_HORIZONTAL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  WIDGET_TYPE_SCROLLBAR ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  scrollbar_draw ; 
 int /*<<< orphan*/  scrollbar_free ; 
 int /*<<< orphan*/  scrollbar_get_desired_height ; 
 int /*<<< orphan*/  scrollbar_motion_notify ; 
 int /*<<< orphan*/  scrollbar_trigger_action ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

scrollbar *FUNC7 ( widget *parent, const char *name )
{
    scrollbar *sb = FUNC2 ( sizeof ( scrollbar ) );
    FUNC4 ( FUNC0 ( sb ), parent, WIDGET_TYPE_SCROLLBAR, name );
    sb->widget.x = 0;
    sb->widget.y = 0;
    sb->width    = FUNC3 ( FUNC0 ( sb ), "handle-width", DEFAULT_SCROLLBAR_WIDTH );
    int width = FUNC1 ( sb->width, ROFI_ORIENTATION_HORIZONTAL );
    sb->widget.w = FUNC6 ( FUNC0 ( sb ) ) + width;
    sb->widget.h = FUNC5 ( FUNC0 ( sb ) );

    sb->widget.draw               = scrollbar_draw;
    sb->widget.free               = scrollbar_free;
    sb->widget.trigger_action     = scrollbar_trigger_action;
    sb->widget.motion_notify      = scrollbar_motion_notify;
    sb->widget.get_desired_height = scrollbar_get_desired_height;

    sb->length     = 10;
    sb->pos        = 0;
    sb->pos_length = 4;

    return sb;
}