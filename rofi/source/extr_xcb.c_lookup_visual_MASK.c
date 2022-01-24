#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ visual_id; } ;
typedef  TYPE_1__ xcb_visualtype_t ;
struct TYPE_10__ {TYPE_1__* data; scalar_t__ rem; } ;
typedef  TYPE_2__ xcb_visualtype_iterator_t ;
typedef  scalar_t__ xcb_visualid_t ;
typedef  int /*<<< orphan*/  xcb_screen_t ;
struct TYPE_11__ {int /*<<< orphan*/  data; scalar_t__ rem; } ;
typedef  TYPE_3__ xcb_depth_iterator_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 TYPE_2__ FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_3__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

__attribute__((used)) static xcb_visualtype_t * FUNC4 (xcb_screen_t   *s, xcb_visualid_t  visual)
{
    xcb_depth_iterator_t d;
    d = FUNC2 (s);
    for (; d.rem; FUNC0 (&d)) {
        xcb_visualtype_iterator_t v = FUNC1 (d.data);
        for (; v.rem; FUNC3 (&v)) {
            if (v.data->visual_id == visual)
                return v.data;
        }
    }
    return 0;
}