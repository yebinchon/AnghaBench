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
struct extension_widget_value_t {struct extension_widget_value_t* psz_text; struct extension_widget_value_t* p_next; } ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_4__ {scalar_t__ type; int b_update; TYPE_1__* p_dialog; struct extension_widget_value_t* p_values; } ;
typedef  TYPE_2__ extension_widget_t ;
struct TYPE_3__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 scalar_t__ EXTENSION_WIDGET_DROPDOWN ; 
 scalar_t__ EXTENSION_WIDGET_LIST ; 
 int /*<<< orphan*/  FUNC0 (struct extension_widget_value_t*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6( lua_State *L )
{
    /* Get widget */
    extension_widget_t **pp_widget =
            (extension_widget_t **) FUNC1( L, 1, "widget" );
    if( !pp_widget || !*pp_widget )
        return FUNC2( L, "Can't get pointer to widget" );
    extension_widget_t *p_widget = *pp_widget;

    if( p_widget->type != EXTENSION_WIDGET_DROPDOWN
        && p_widget->type != EXTENSION_WIDGET_LIST )
        return FUNC2( L, "method clear not valid for this widget" );

    struct extension_widget_value_t *p_value, *p_next;

    FUNC4( &p_widget->p_dialog->lock );

    for( p_value = p_widget->p_values;
         p_value != NULL;
         p_value = p_next )
    {
        p_next = p_value->p_next;
        FUNC0( p_value->psz_text );
        FUNC0( p_value );
    }

    p_widget->p_values = NULL;
    p_widget->b_update = true;

    FUNC5( &p_widget->p_dialog->lock );

    FUNC3( L, 1 );

    return 1;
}