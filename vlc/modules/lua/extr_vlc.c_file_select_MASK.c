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

/* Variables and functions */
 char const** ppsz_lua_exts ; 
 int /*<<< orphan*/  FUNC0 (char const*,char const*) ; 
 int FUNC1 (char const*) ; 

__attribute__((used)) static int FUNC2( const char *file )
{
    int i = FUNC1( file );
    int j;
    for( j = 0; ppsz_lua_exts[j]; j++ )
    {
        int l = FUNC1( ppsz_lua_exts[j] );
        if( i >= l && !FUNC0( file+i-l, ppsz_lua_exts[j] ) )
            return 1;
    }
    return 0;
}