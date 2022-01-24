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
typedef  int /*<<< orphan*/  cairo_surface_t ;
struct TYPE_4__ {TYPE_1__* screen; int /*<<< orphan*/  connection; } ;
struct TYPE_3__ {int /*<<< orphan*/  height_in_pixels; int /*<<< orphan*/  width_in_pixels; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  root_visual ; 
 TYPE_2__* xcb ; 
 int /*<<< orphan*/  FUNC1 () ; 

cairo_surface_t *FUNC2 ( void )
{
    return FUNC0 ( xcb->connection,
                                      FUNC1 (), root_visual,
                                      xcb->screen->width_in_pixels, xcb->screen->height_in_pixels );
}