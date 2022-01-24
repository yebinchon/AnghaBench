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
struct extension_widget_value_t {int b_selected; struct extension_widget_value_t* p_next; int /*<<< orphan*/  i_id; int /*<<< orphan*/  psz_text; } ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_4__ {scalar_t__ type; int b_update; TYPE_1__* p_dialog; struct extension_widget_value_t* p_values; } ;
typedef  TYPE_2__ extension_widget_t ;
struct TYPE_3__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 scalar_t__ EXTENSION_WIDGET_DROPDOWN ; 
 scalar_t__ EXTENSION_WIDGET_LIST ; 
 struct extension_widget_value_t* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10( lua_State *L )
{
    /* Get widget */
    extension_widget_t **pp_widget =
            (extension_widget_t **) FUNC2( L, 1, "widget" );
    if( !pp_widget || !*pp_widget )
        return FUNC3( L, "Can't get pointer to widget" );
    extension_widget_t *p_widget = *pp_widget;

    if( p_widget->type != EXTENSION_WIDGET_DROPDOWN
        && p_widget->type != EXTENSION_WIDGET_LIST )
        return FUNC3( L, "method add_value not valid for this widget" );

    if( !FUNC5( L, 2 ) )
        return FUNC3( L, "widget:add_value usage: (text, id = 0)" );

    struct extension_widget_value_t *p_value,
        *p_new_value = FUNC0( 1, sizeof( struct extension_widget_value_t ) );
    p_new_value->psz_text = FUNC7( FUNC1( L, 2 ) );
    p_new_value->i_id = FUNC6( L, 3 );

    FUNC8( &p_widget->p_dialog->lock );

    if( !p_widget->p_values )
    {
        p_widget->p_values = p_new_value;
        if( p_widget->type == EXTENSION_WIDGET_DROPDOWN )
            p_new_value->b_selected = true;
    }
    else
    {
        for( p_value = p_widget->p_values;
             p_value->p_next != NULL;
             p_value = p_value->p_next )
        { /* Do nothing, iterate to find the end */ }
        p_value->p_next = p_new_value;
    }

    p_widget->b_update = true;
    FUNC9( &p_widget->p_dialog->lock );

    FUNC4( L, 1 );

    return 1;
}