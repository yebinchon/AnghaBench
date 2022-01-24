#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xcb_window_t ;
struct TYPE_7__ {scalar_t__ type; } ;
typedef  TYPE_1__ xcb_get_property_reply_t ;
typedef  int /*<<< orphan*/  xcb_get_property_cookie_t ;
typedef  int /*<<< orphan*/  xcb_atom_t ;
struct TYPE_8__ {int /*<<< orphan*/  connection; } ;

/* Variables and functions */
 size_t STRING ; 
 int /*<<< orphan*/  UINT_MAX ; 
 size_t UTF8_STRING ; 
 int /*<<< orphan*/  XCB_GET_PROPERTY_TYPE_ANY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 char* FUNC1 (char*) ; 
 char* FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__* netatoms ; 
 char* FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_5__* xcb ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 scalar_t__ FUNC7 (TYPE_1__*) ; 

char* FUNC8 ( xcb_window_t w, xcb_atom_t atom )
{
    xcb_get_property_cookie_t c  = FUNC4 ( xcb->connection, 0, w, atom, XCB_GET_PROPERTY_TYPE_ANY, 0, UINT_MAX );
    xcb_get_property_reply_t  *r = FUNC5 ( xcb->connection, c, NULL );
    if ( r ) {
        if ( FUNC7 ( r ) > 0 ) {
            char *str = NULL;
            if ( r->type == netatoms[UTF8_STRING] ) {
                str = FUNC2 ( FUNC6 ( r ), FUNC7 ( r ) );
            }
            else if ( r->type == netatoms[STRING] ) {
                str = FUNC3 ( FUNC6 ( r ), FUNC7 ( r ) );
            }
            else {
                str = FUNC1 ( "Invalid encoding." );
            }

            FUNC0 ( r );
            return str;
        }
        FUNC0 ( r );
    }
    return NULL;
}