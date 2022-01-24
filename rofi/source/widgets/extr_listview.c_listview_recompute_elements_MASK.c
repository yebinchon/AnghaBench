#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int max_rows; unsigned int req_elements; unsigned int max_elements; int cur_columns; int menu_columns; unsigned int cur_elements; int /*<<< orphan*/  rchanged; TYPE_3__* boxes; int /*<<< orphan*/  fixed_columns; } ;
typedef  TYPE_1__ listview ;
typedef  int /*<<< orphan*/  _listview_row ;
struct TYPE_10__ {int /*<<< orphan*/  box; } ;

/* Variables and functions */
 unsigned int FUNC0 (int,unsigned int) ; 
 int /*<<< orphan*/  NORMAL ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC2 (TYPE_3__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_3__*) ; 
 int /*<<< orphan*/  listview_element_trigger_action ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static void FUNC7 ( listview *lv )
{
    unsigned int newne = 0;
    if ( lv->max_rows == 0 ) {
        return;
    }
    if ( !(lv->fixed_columns) && lv->req_elements < lv->max_elements ) {
        newne           = lv->req_elements;
        lv->cur_columns = ( lv->req_elements + ( lv->max_rows - 1 ) ) / lv->max_rows;
    }
    else {
        newne           = FUNC0( lv->req_elements, lv->max_elements);
        lv->cur_columns = lv->menu_columns;
    }
    for ( unsigned int i = newne; i < lv->cur_elements; i++ ) {
        FUNC5 ( FUNC1 ( lv->boxes[i].box ) );
    }
    lv->boxes = FUNC2 ( lv->boxes, newne * sizeof ( _listview_row ) );
    if ( newne > 0   ) {
        for ( unsigned int i = lv->cur_elements; i < newne; i++ ) {
            FUNC3 ( lv, &(lv->boxes[i]) );
            FUNC6 ( FUNC1 ( lv->boxes[i].box ), listview_element_trigger_action, lv );
            FUNC4 ( lv->boxes[i], NORMAL);
        }
    }
    lv->rchanged     = TRUE;
    lv->cur_elements = newne;
}