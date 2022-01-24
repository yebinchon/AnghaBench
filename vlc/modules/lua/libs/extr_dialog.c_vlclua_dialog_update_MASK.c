#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  extension_dialog_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5( lua_State *L )
{
    vlc_object_t *p_mgr = FUNC4( L );

    extension_dialog_t **pp_dlg =
            (extension_dialog_t**) FUNC0( L, 1, "dialog" );
    if( !pp_dlg || !*pp_dlg )
        return FUNC1( L, "Can't get pointer to dialog" );
    extension_dialog_t *p_dlg = *pp_dlg;

    // Updating dialog immediately
    FUNC3( p_mgr, p_dlg );

    // Reset update flag
    FUNC2( L, 0 );

    return 1;
}