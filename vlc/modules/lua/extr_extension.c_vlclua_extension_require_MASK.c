#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_3__ {int /*<<< orphan*/  psz_name; } ;
typedef  TYPE_1__ extension_t ;

/* Variables and functions */
 int FUNC0 (char**,char*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,char const*) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (char*) ; 
 char* FUNC7 (char*,char) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11( lua_State *L )
{
    const char *psz_module = FUNC2( L, 1 );
    vlc_object_t *p_this = FUNC10( L );
    extension_t *p_ext = FUNC9( L );
    FUNC4( p_this, "loading module '%s' from extension package",
             psz_module );
    char *psz_fullpath, *psz_package, *sep;
    psz_package = FUNC5( p_ext->psz_name );
    sep = FUNC7( psz_package, '/' );
    if( !sep )
    {
        FUNC1( psz_package );
        return FUNC3( L, "could not find package name" );
    }
    *sep = '\0';
    if( -1 == FUNC0( &psz_fullpath,
                        "%s/modules/%s.luac", psz_package, psz_module ) )
    {
        FUNC1( psz_package );
        return 1;
    }
    int i_ret = FUNC8( p_this, L, psz_fullpath );
    if( i_ret != 0 )
    {
        // Remove trailing 'c' --> try with .lua script
        psz_fullpath[ FUNC6( psz_fullpath ) - 1 ] = '\0';
        i_ret = FUNC8( p_this, L, psz_fullpath );
    }
    FUNC1( psz_fullpath );
    FUNC1( psz_package );
    if( i_ret != 0 )
    {
        return FUNC3( L, "unable to load module '%s' from package",
                           psz_module );
    }
    return 0;
}