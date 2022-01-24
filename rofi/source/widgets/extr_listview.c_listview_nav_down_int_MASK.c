#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  direction; } ;
struct TYPE_6__ {int req_elements; int selected; TYPE_1__ barview; int /*<<< orphan*/  cycle; } ;
typedef  TYPE_2__ listview ;

/* Variables and functions */
 int /*<<< orphan*/  LEFT_TO_RIGHT ; 
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3 ( listview *lv )
{
    if ( lv == NULL ) {
        return;
    }
    if ( lv->req_elements == 0 || ( lv->selected == ( lv->req_elements - 1 ) && !lv->cycle ) ) {
        return;
    }
    lv->selected          = lv->selected < lv->req_elements - 1 ? FUNC0 ( lv->req_elements - 1, lv->selected + 1 ) : 0;
    lv->barview.direction = LEFT_TO_RIGHT;
    FUNC2 ( FUNC1 ( lv ) );
}