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
struct extension_widget_value_t {int /*<<< orphan*/  psz_text; int /*<<< orphan*/  i_id; scalar_t__ b_selected; struct extension_widget_value_t* p_next; } ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_4__ {scalar_t__ type; TYPE_1__* p_dialog; struct extension_widget_value_t* p_values; } ;
typedef  TYPE_2__ extension_widget_t ;
struct TYPE_3__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 scalar_t__ EXTENSION_WIDGET_LIST ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8( lua_State *L )
{
    /* Get widget */
    extension_widget_t **pp_widget =
            (extension_widget_t **) FUNC0( L, 1, "widget" );
    if( !pp_widget || !*pp_widget )
        return FUNC1( L, "Can't get pointer to widget" );
    extension_widget_t *p_widget = *pp_widget;

    if( p_widget->type != EXTENSION_WIDGET_LIST )
        return FUNC1( L, "method get_selection not valid for this widget" );

    /* Create empty table */
    FUNC2( L );

    FUNC6( &p_widget->p_dialog->lock );

    struct extension_widget_value_t *p_value;
    for( p_value = p_widget->p_values;
         p_value != NULL;
         p_value = p_value->p_next )
    {
        if( p_value->b_selected )
        {
            FUNC3( L, p_value->i_id );
            FUNC4( L, p_value->psz_text );
            FUNC5( L, -3 );
        }
    }

    FUNC7( &p_widget->p_dialog->lock );

    return 1;
}