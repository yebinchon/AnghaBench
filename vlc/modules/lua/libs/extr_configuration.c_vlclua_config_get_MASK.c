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
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 char* FUNC2 (char const*) ; 
 int FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11( lua_State *L )
{
    const char *psz_name = FUNC5( L, 1 );
    switch( FUNC3( psz_name ) )
    {
        case VLC_VAR_STRING:
        {
            char *psz = FUNC2( psz_name );
            FUNC9( L, psz );
            FUNC4( psz );
            break;
        }

        case VLC_VAR_INTEGER:
            FUNC7( L, FUNC1( psz_name ) );
            break;

        case VLC_VAR_BOOL:
            FUNC6( L, FUNC1( psz_name ) );
            break;

        case VLC_VAR_FLOAT:
            FUNC8( L, FUNC0( psz_name ) );
            break;

        default:
            return FUNC10( L );

    }
    return 1;
}