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
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  psz_title; } ;
typedef  TYPE_1__ extension_dialog_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8( lua_State *L )
{
    extension_dialog_t **pp_dlg =
            (extension_dialog_t**) FUNC2( L, 1, "dialog" );
    if( !pp_dlg || !*pp_dlg )
        return FUNC3( L, "Can't get pointer to dialog" );
    extension_dialog_t *p_dlg = *pp_dlg;

    FUNC6( &p_dlg->lock );

    const char *psz_title = FUNC1( L, 2 );
    FUNC0( p_dlg->psz_title );
    p_dlg->psz_title = FUNC5( psz_title );

    FUNC7( &p_dlg->lock );

    FUNC4( L, 1 );

    return 1;
}