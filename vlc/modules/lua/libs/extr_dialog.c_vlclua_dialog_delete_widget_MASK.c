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
typedef  int /*<<< orphan*/  vlc_object_t ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_7__ {scalar_t__ type; int b_kill; int /*<<< orphan*/ * p_sys_intf; } ;
typedef  TYPE_1__ extension_widget_t ;
struct TYPE_8__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  cond; int /*<<< orphan*/ * p_sys_intf; int /*<<< orphan*/  b_kill; } ;
typedef  TYPE_2__ extension_dialog_t ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*,TYPE_1__*) ; 
 scalar_t__ EXTENSION_WIDGET_BUTTON ; 
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 int VLC_SUCCESS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13( lua_State *L )
{
    /* Get dialog */
    extension_dialog_t **pp_dlg =
            (extension_dialog_t**) FUNC1( L, 1, "dialog" );
    if( !pp_dlg || !*pp_dlg )
        return FUNC2( L, "Can't get pointer to dialog" );
    extension_dialog_t *p_dlg = *pp_dlg;

    /* Get widget */
    if( !FUNC4( L, 2 ) )
        return FUNC2( L, "Argument to del_widget is not a widget" );

    /* Get dialog */
    extension_widget_t **pp_widget =
            (extension_widget_t **) FUNC1( L, 2, "widget" );
    if( !pp_widget || !*pp_widget )
        return FUNC2( L, "Can't get pointer to widget" );
    extension_widget_t *p_widget = *pp_widget;

    /* Delete widget */
    *pp_widget = NULL;
    if( p_widget->type == EXTENSION_WIDGET_BUTTON )
    {
        /* Remove button action from registry */
        FUNC5( L, p_widget );
        FUNC6( L );
        FUNC7( L, LUA_REGISTRYINDEX );
    }

    vlc_object_t *p_mgr = FUNC12( L );

    p_widget->b_kill = true;

    FUNC3( L, 0 ); // Reset update flag
    int i_ret = FUNC9( p_mgr, p_dlg );

    if( i_ret != VLC_SUCCESS )
    {
        return FUNC2( L, "Could not delete widget" );
    }

    FUNC10( &p_dlg->lock );

    /* Same remarks as for dialog delete.
     * If the dialog is deleted or about to be deleted, then there is no
     * need to wait on this particular widget that already doesn't exist
     * anymore in the UI */
    while( p_widget->p_sys_intf != NULL && !p_dlg->b_kill
           && p_dlg->p_sys_intf != NULL )
    {
        FUNC8( &p_dlg->cond, &p_dlg->lock );
    }

    i_ret = FUNC0( p_dlg, p_widget );

    FUNC11( &p_dlg->lock );

    if( i_ret != VLC_SUCCESS )
    {
        return FUNC2( L, "Could not remove widget from list" );
    }

    return 1;
}