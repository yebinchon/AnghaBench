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
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int,char*,size_t) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6( lua_State *L )
{
    int fd = FUNC5( L, FUNC0( L, 1 ) );
    size_t i_len = (size_t)FUNC1( L, 2, 1 );
    char psz_buffer[i_len];

    ssize_t i_ret = (fd != -1) ? FUNC4( fd, psz_buffer, i_len ) : -1;
    if( i_ret > 0 )
        FUNC2( L, psz_buffer, i_ret );
    else
        FUNC3( L );
    return 1;
}