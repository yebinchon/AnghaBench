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
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_4__ {int /*<<< orphan*/  b_checked; int /*<<< orphan*/  psz_text; int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ extension_widget_t ;

/* Variables and functions */
 int /*<<< orphan*/  EXTENSION_WIDGET_CHECK_BOX ; 
 TYPE_1__* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int,TYPE_1__*) ; 

__attribute__((used)) static int FUNC7( lua_State *L )
{
    /* Verify arguments */
    if( !FUNC3( L, 2 ) )
        return FUNC2( L, "dialog:add_check_box usage: (text, checked)" );

    extension_widget_t *p_widget = FUNC0( 1, sizeof( extension_widget_t ) );
    p_widget->type = EXTENSION_WIDGET_CHECK_BOX;
    p_widget->psz_text = FUNC5( FUNC1( L, 2 ) );
    p_widget->b_checked = FUNC4( L, 3 );

    return FUNC6( L, 2, p_widget );
}