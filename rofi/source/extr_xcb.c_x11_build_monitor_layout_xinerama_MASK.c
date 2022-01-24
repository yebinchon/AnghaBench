#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ rem; TYPE_1__* data; } ;
typedef  TYPE_2__ xcb_xinerama_screen_info_iterator_t ;
typedef  int /*<<< orphan*/  xcb_xinerama_query_screens_reply_t ;
typedef  int /*<<< orphan*/  xcb_xinerama_query_screens_cookie_t ;
struct TYPE_10__ {int /*<<< orphan*/  monitor_id; struct TYPE_10__* next; int /*<<< orphan*/  h; int /*<<< orphan*/  w; int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
typedef  TYPE_3__ workarea ;
struct TYPE_11__ {TYPE_3__* monitors; int /*<<< orphan*/  connection; } ;
struct TYPE_8__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  y_org; int /*<<< orphan*/  x_org; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC1 (int) ; 
 TYPE_6__* xcb ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_2__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC6 ()
{
    xcb_xinerama_query_screens_cookie_t screens_cookie = FUNC4 (
        xcb->connection
        );

    xcb_xinerama_query_screens_reply_t *screens_reply = FUNC2 (
        xcb->connection,
        screens_cookie,
        NULL
        );

    xcb_xinerama_screen_info_iterator_t screens_iterator = FUNC3 (
        screens_reply
        );

    for (; screens_iterator.rem > 0; FUNC5 ( &screens_iterator ) ) {
        workarea *w = FUNC1 ( sizeof ( workarea ) );

        w->x = screens_iterator.data->x_org;
        w->y = screens_iterator.data->y_org;
        w->w = screens_iterator.data->width;
        w->h = screens_iterator.data->height;

        w->next       = xcb->monitors;
        xcb->monitors = w;
    }

    int index = 0;
    for ( workarea *iter = xcb->monitors; iter; iter = iter->next ) {
        iter->monitor_id = index++;
    }

    FUNC0 ( screens_reply );
}