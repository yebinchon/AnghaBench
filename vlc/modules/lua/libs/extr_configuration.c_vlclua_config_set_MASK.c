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
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
#define  VLC_VAR_BOOL 131 
#define  VLC_VAR_FLOAT 130 
#define  VLC_VAR_INTEGER 129 
#define  VLC_VAR_STRING 128 
 int FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 char* FUNC7 (int /*<<< orphan*/ *,int) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9( lua_State *L )
{
    const char *psz_name = FUNC7( L, 1 );
    switch( FUNC0( psz_name ) )
    {
        case VLC_VAR_STRING:
            FUNC3( psz_name, FUNC7( L, 2 ) );
            break;

        case VLC_VAR_INTEGER:
            FUNC2( psz_name, FUNC5( L, 2 ) );
            break;

        case VLC_VAR_BOOL:
            FUNC2( psz_name, FUNC4( L, 2 ) );
            break;

        case VLC_VAR_FLOAT:
            FUNC1( psz_name, FUNC6( L, 2 ) );
            break;

        default:
            return FUNC8( L );
    }
    return 0;
}