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
struct TYPE_6__ {int /*<<< orphan*/  get_desired_width; int /*<<< orphan*/  get_desired_height; int /*<<< orphan*/  resize; int /*<<< orphan*/  free; int /*<<< orphan*/  draw; } ;
struct TYPE_7__ {int size; void* xalign; void* yalign; int /*<<< orphan*/  icon_fetch_id; TYPE_1__ widget; } ;
typedef  TYPE_2__ icon ;
typedef  int /*<<< orphan*/  RofiDistance ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (double,void*) ; 
 int /*<<< orphan*/  ROFI_ORIENTATION_VERTICAL ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  WIDGET_TYPE_UNKNOWN ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC4 (int) ; 
 int /*<<< orphan*/  icon_draw ; 
 int /*<<< orphan*/  icon_free ; 
 int /*<<< orphan*/  icon_get_desired_height ; 
 int /*<<< orphan*/  icon_get_desired_width ; 
 int /*<<< orphan*/  icon_resize ; 
 int /*<<< orphan*/  FUNC5 (char const*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 void* FUNC7 (int /*<<< orphan*/ ,char*,double) ; 
 char* FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 

icon * FUNC10 ( widget *parent, const char *name )
{
    icon *b = FUNC4 ( sizeof ( icon ) );

    b->size = 16;
    // Initialize widget.
    FUNC9 ( FUNC2 ( b ), parent, WIDGET_TYPE_UNKNOWN, name );
    b->widget.draw               = icon_draw;
    b->widget.free               = icon_free;
    b->widget.resize             = icon_resize;
    b->widget.get_desired_height = icon_get_desired_height;
    b->widget.get_desired_width  = icon_get_desired_width;

    RofiDistance d = FUNC6 ( FUNC2 (b), "size" , b->size );
    b->size = FUNC3 ( d, ROFI_ORIENTATION_VERTICAL );

    const char * filename = FUNC8 ( FUNC2 ( b ), "filename", NULL );
    if ( filename ) {
        b->icon_fetch_id = FUNC5 ( filename, b->size );
    }
    b->yalign = FUNC7 ( FUNC2 ( b ), "vertical-align", 0.5 );
    b->yalign = FUNC0 ( 0, FUNC1 ( 1.0, b->yalign ) );
    b->xalign = FUNC7 ( FUNC2 ( b ), "horizontal-align", 0.5 );
    b->xalign = FUNC0 ( 0, FUNC1 ( 1.0, b->xalign ) );

    return b;
}