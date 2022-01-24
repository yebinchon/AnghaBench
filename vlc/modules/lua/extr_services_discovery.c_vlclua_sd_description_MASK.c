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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 char const* FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,char const*,...) ; 

__attribute__((used)) static const char *FUNC8( vlc_object_t *obj, lua_State *L,
                                          const char *filename )
{
    FUNC1( L, "descriptor" );
    if( !FUNC2( L, -1 ) )
    {
        FUNC7( obj, "No 'descriptor' function in '%s'", filename );
        FUNC5( L, 1 );
        return NULL;
    }

    if( FUNC4( L, 0, 1, 0 ) )
    {
        FUNC7( obj, "Error while running script %s, "
                  "function descriptor(): %s", filename,
                  FUNC6( L, -1 ) );
        FUNC5( L, 1 );
        return NULL;
    }

    FUNC0( L, -1, "title" );
    if ( !FUNC3( L, -1 ) )
    {
        FUNC7( obj, "'descriptor' function in '%s' returned no title",
                  filename );
        FUNC5( L, 2 );
        return NULL;
    }

    return FUNC6( L, -1 );
}