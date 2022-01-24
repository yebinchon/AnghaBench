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
typedef  int /*<<< orphan*/  widget ;
struct TYPE_3__ {unsigned int cur_elements; int /*<<< orphan*/  scrollbar; struct TYPE_3__* listview_name; struct TYPE_3__* boxes; int /*<<< orphan*/  box; } ;
typedef  TYPE_1__ listview ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3 ( widget *wid )
{
    listview *lv = (listview *) wid;
    for ( unsigned int i = 0; i < lv->cur_elements; i++ ) {
        FUNC2 ( FUNC0 ( lv->boxes [i].box ) );
    }
    FUNC1 ( lv->boxes );

    FUNC1 ( lv->listview_name );
    FUNC2 ( FUNC0 ( lv->scrollbar ) );
    FUNC1 ( lv );
}