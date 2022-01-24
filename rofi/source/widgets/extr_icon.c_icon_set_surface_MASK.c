#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * icon; scalar_t__ icon_fetch_id; } ;
typedef  TYPE_1__ icon ;
typedef  int /*<<< orphan*/  cairo_surface_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4 ( icon *icon, cairo_surface_t *surf )
{
    icon->icon_fetch_id = 0;
    if ( icon->icon ) {
        FUNC1 ( icon->icon );
        icon->icon = NULL;
    }
    if ( surf ) {
        FUNC2 ( surf );
        icon->icon = surf;
    }
    FUNC3 ( FUNC0 ( icon ) );
}