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
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_4__ {scalar_t__ type; scalar_t__ i_spin_loops; int b_update; TYPE_1__* p_dialog; } ;
typedef  TYPE_2__ extension_widget_t ;
struct TYPE_3__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 scalar_t__ EXTENSION_WIDGET_SPIN_ICON ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5( lua_State *L )
{
    /* Get dialog */
    extension_widget_t **pp_widget =
            (extension_widget_t **) FUNC0( L, 1, "widget" );
    if( !pp_widget || !*pp_widget )
        return FUNC1( L, "Can't get pointer to widget" );
    extension_widget_t *p_widget = *pp_widget;

    if( p_widget->type != EXTENSION_WIDGET_SPIN_ICON )
        return FUNC1( L, "method stop not valid for this widget" );

    FUNC3( &p_widget->p_dialog->lock );

    bool b_needs_update = p_widget->i_spin_loops != 0;
    p_widget->i_spin_loops = 0;

    FUNC4( &p_widget->p_dialog->lock );

    if( b_needs_update )
    {
        /* Signal interface of the change */
        p_widget->b_update = true;
        FUNC2( L, 1 );
    }

    return 1;
}