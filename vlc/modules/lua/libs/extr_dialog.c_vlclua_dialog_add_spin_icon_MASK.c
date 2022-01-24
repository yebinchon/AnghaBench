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
struct TYPE_4__ {int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ extension_widget_t ;

/* Variables and functions */
 int /*<<< orphan*/  EXTENSION_WIDGET_SPIN_ICON ; 
 TYPE_1__* FUNC0 (int,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static int FUNC4( lua_State *L )
{
    /* Verify arguments */
    if( !FUNC2( L, 2 ) )
        return FUNC1( L, "dialog:add_image usage: (filename)" );

    extension_widget_t *p_widget = FUNC0( 1, sizeof( extension_widget_t ) );
    p_widget->type = EXTENSION_WIDGET_SPIN_ICON;

    return FUNC3( L, 0, p_widget );
}