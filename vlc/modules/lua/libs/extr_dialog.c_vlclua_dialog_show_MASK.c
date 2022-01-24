#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_2__ {int b_hide; } ;
typedef  TYPE_1__ extension_dialog_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC3( lua_State *L )
{
    extension_dialog_t **pp_dlg =
            (extension_dialog_t**) FUNC0( L, 1, "dialog" );
    if( !pp_dlg || !*pp_dlg )
        return FUNC1( L, "Can't get pointer to dialog" );
    extension_dialog_t *p_dlg = *pp_dlg;

    p_dlg->b_hide = false;
    FUNC2( L, 1 );

    return 1;
}