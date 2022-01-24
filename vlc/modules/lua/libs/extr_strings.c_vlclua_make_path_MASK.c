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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC3 (char const*) ; 

__attribute__((used)) static int FUNC4( lua_State *L )
{
    const char *psz_input = FUNC1( L, 1 );
    char *psz_path = FUNC3( psz_input);
    FUNC2( L, psz_path );
    FUNC0( psz_path );
    return 1;
}