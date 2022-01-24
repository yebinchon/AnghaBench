#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_7__ {void* i_height; void* i_width; void* i_vert_span; void* i_horiz_span; void* i_row; void* i_column; TYPE_2__* p_dialog; } ;
typedef  TYPE_1__ extension_widget_t ;
struct TYPE_8__ {int /*<<< orphan*/  lock; } ;
typedef  TYPE_2__ extension_dialog_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,TYPE_1__*) ; 
 void* FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 TYPE_1__** FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vlclua_widget_reg ; 

__attribute__((used)) static int FUNC14( lua_State *L, int i_args,
                                       extension_widget_t *p_widget )
{
    int arg = i_args + 2;

    /* Get dialog */
    extension_dialog_t **pp_dlg =
            (extension_dialog_t**) FUNC2( L, 1, "dialog" );
    if( !pp_dlg || !*pp_dlg )
        return FUNC3( L, "Can't get pointer to dialog" );
    extension_dialog_t *p_dlg = *pp_dlg;

    /* Set parent dialog */
    p_widget->p_dialog = p_dlg;

    /* Set common arguments: col, row, hspan, vspan, width, height */
    if( FUNC7( L, arg ) )
        p_widget->i_column = FUNC1( L, arg );
    else goto end_of_args;
    if( FUNC7( L, ++arg ) )
        p_widget->i_row = FUNC1( L, arg );
    else goto end_of_args;
    if( FUNC7( L, ++arg ) )
        p_widget->i_horiz_span = FUNC1( L, arg );
    else goto end_of_args;
    if( FUNC7( L, ++arg ) )
        p_widget->i_vert_span = FUNC1( L, arg );
    else goto end_of_args;
    if( FUNC7( L, ++arg ) )
        p_widget->i_width = FUNC1( L, arg );
    else goto end_of_args;
    if( FUNC7( L, ++arg ) )
        p_widget->i_height = FUNC1( L, arg );
    else goto end_of_args;

end_of_args:
    FUNC12( &p_dlg->lock );

    /* Add the widget to the dialog descriptor */
    FUNC0( p_dlg, p_widget );

    FUNC13( &p_dlg->lock );

    /* Create meta table */
    extension_widget_t **pp_widget = FUNC9( L, sizeof( extension_widget_t* ) );
    *pp_widget = p_widget;
    if( FUNC4( L, "widget" ) )
    {
        FUNC8( L );
        FUNC5( L, NULL, vlclua_widget_reg );
        FUNC10( L, -2, "__index" );
    }
    FUNC11( L, -2 );

    FUNC6( L, 1 );

    return 1;
}