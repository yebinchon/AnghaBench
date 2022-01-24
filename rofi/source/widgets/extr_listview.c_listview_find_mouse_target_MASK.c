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
typedef  int /*<<< orphan*/  widget ;
struct TYPE_4__ {TYPE_1__* boxes; scalar_t__ last_offset; scalar_t__ req_elements; int /*<<< orphan*/  cur_elements; int /*<<< orphan*/  scrollbar; } ;
typedef  TYPE_2__ listview ;
typedef  scalar_t__ gint ;
typedef  int /*<<< orphan*/  WidgetType ;
struct TYPE_3__ {int /*<<< orphan*/  box; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 

__attribute__((used)) static widget *FUNC7 ( widget *wid, WidgetType type, gint x, gint y )
{
    widget   *target = NULL;
    gint     rx, ry;
    listview *lv = (listview *) wid;
    if ( FUNC2 ( FUNC1 ( lv->scrollbar ) ) && FUNC6 ( FUNC1 ( lv->scrollbar ), x, y ) ) {
        rx     = x - FUNC4 ( FUNC1 ( lv->scrollbar ) );
        ry     = y - FUNC5 ( FUNC1 ( lv->scrollbar ) );
        target = FUNC3 ( FUNC1 ( lv->scrollbar ), type, rx, ry );
    }

    unsigned int max = FUNC0 ( lv->cur_elements, lv->req_elements - lv->last_offset );
    unsigned int i;
    for ( i = 0; i < max && target == NULL; i++ ) {
        widget *w = FUNC1 ( lv->boxes[i].box );
        if ( FUNC6 ( w, x, y ) ) {
            rx     = x - FUNC4 ( w );
            ry     = y - FUNC5 ( w );
            target = FUNC3 ( w, type, rx, ry );
        }
    }

    return target;
}