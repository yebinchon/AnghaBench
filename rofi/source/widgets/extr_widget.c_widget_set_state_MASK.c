#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {char const* state; int /*<<< orphan*/  def_border_radius; void* border_radius; int /*<<< orphan*/  def_border; void* border; } ;
typedef  TYPE_1__ widget ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*,char const*) ; 
 void* FUNC1 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

void FUNC3 ( widget *widget, const char *state )
{
    if ( FUNC0 ( widget->state, state ) ) {
        widget->state = state;
        // Update border.
        widget->border        = FUNC1 ( widget, "border", widget->def_border );
        widget->border_radius = FUNC1 ( widget, "border-radius", widget->def_border_radius );

        FUNC2 ( widget );
    }
}