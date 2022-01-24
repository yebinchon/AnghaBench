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
 int NB_PRESETS ; 
 int FUNC0 (char**,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/ * preset_list_text ; 

__attribute__((used)) static int FUNC5( lua_State *L )
{
    FUNC2( L );
    char *str;
    for( int i = 0 ; i < NB_PRESETS ; i++ )
    {
        FUNC3( L, preset_list_text[i] );
        if( FUNC0( &str , "preset id=\"%d\"",i ) == -1 )
            return 0;
        FUNC4( L , -2 , str );
        FUNC1(str);
    }
    return 1;
}