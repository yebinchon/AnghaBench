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
struct TYPE_6__ {int /*<<< orphan*/  get_desired_width; int /*<<< orphan*/  get_desired_height; int /*<<< orphan*/  find_mouse_target; int /*<<< orphan*/  update; int /*<<< orphan*/  resize; int /*<<< orphan*/  free; int /*<<< orphan*/  draw; } ;
struct TYPE_7__ {int /*<<< orphan*/  spacing; int /*<<< orphan*/  type; TYPE_1__ widget; } ;
typedef  TYPE_2__ box ;
typedef  int /*<<< orphan*/  RofiOrientation ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_SPACING ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  WIDGET_TYPE_UNKNOWN ; 
 int /*<<< orphan*/  box_draw ; 
 int /*<<< orphan*/  box_find_mouse_target ; 
 int /*<<< orphan*/  box_free ; 
 int /*<<< orphan*/  box_get_desired_height ; 
 int /*<<< orphan*/  box_get_desired_width ; 
 int /*<<< orphan*/  box_resize ; 
 int /*<<< orphan*/  box_update ; 
 TYPE_2__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 

box * FUNC5 ( widget *parent, const char *name, RofiOrientation type )
{
    box *b = FUNC1 ( sizeof ( box ) );
    // Initialize widget.
    FUNC4 ( FUNC0 ( b ), parent, WIDGET_TYPE_UNKNOWN, name );
    b->type                      = type;
    b->widget.draw               = box_draw;
    b->widget.free               = box_free;
    b->widget.resize             = box_resize;
    b->widget.update             = box_update;
    b->widget.find_mouse_target  = box_find_mouse_target;
    b->widget.get_desired_height = box_get_desired_height;
    b->widget.get_desired_width  = box_get_desired_width;

    b->type = FUNC3 ( FUNC0 ( b ), "orientation", b->type );

    b->spacing = FUNC2 ( FUNC0 ( b ), "spacing", DEFAULT_SPACING );
    return b;
}