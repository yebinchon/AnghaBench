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
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_5__ {int /*<<< orphan*/ * p_sys; int /*<<< orphan*/  psz_text; int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ extension_widget_t ;

/* Variables and functions */
 int /*<<< orphan*/  EXTENSION_WIDGET_BUTTON ; 
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 TYPE_1__* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ *,int,TYPE_1__*) ; 

__attribute__((used)) static int FUNC11( lua_State *L )
{
    /* Verify arguments */
    if( !FUNC4( L, 2 ) || !FUNC3( L, 3 ) )
        return FUNC2( L, "dialog:add_button usage: (text, func)" );

    extension_widget_t *p_widget = FUNC0( 1, sizeof( extension_widget_t ) );
    p_widget->type = EXTENSION_WIDGET_BUTTON;
    p_widget->psz_text = FUNC9( FUNC1( L, 2 ) );
    FUNC8( L, 10 );
    FUNC5( L, p_widget );
    FUNC6( L, 3 );
    FUNC7( L, LUA_REGISTRYINDEX );
    p_widget->p_sys = NULL;

    return FUNC10( L, 2, p_widget );
}