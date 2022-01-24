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
 int /*<<< orphan*/  MSG_NOSIGNAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int,size_t*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int,char const*,size_t,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6( lua_State *L )
{
    int fd = FUNC5( L, FUNC0( L, 1 ) );
    size_t i_len;
    const char *psz_buffer = FUNC1( L, 2, &i_len );

    i_len = (size_t)FUNC2( L, 3, i_len );
    FUNC3( L,
        (fd != -1) ? FUNC4( fd, psz_buffer, i_len, MSG_NOSIGNAL ) : -1 );
    return 1;
}