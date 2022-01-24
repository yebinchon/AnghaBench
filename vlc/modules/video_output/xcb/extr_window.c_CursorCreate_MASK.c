#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  xcb_window_t ;
typedef  void* xcb_pixmap_t ;
typedef  void* xcb_cursor_t ;
typedef  int /*<<< orphan*/  xcb_connection_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,void*,void*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,void*,int /*<<< orphan*/ ,int,int) ; 
 void* FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static xcb_cursor_t FUNC3(xcb_connection_t *conn, xcb_window_t root)
{
    xcb_cursor_t cur = FUNC2(conn);
    xcb_pixmap_t pix = FUNC2(conn);

    FUNC1(conn, 1, pix, root, 1, 1);
    FUNC0(conn, cur, pix, pix, 0, 0, 0, 0, 0, 0, 1, 1);
    return cur;
}