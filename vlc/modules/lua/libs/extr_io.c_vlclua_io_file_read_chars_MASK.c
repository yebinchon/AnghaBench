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
typedef  int /*<<< orphan*/  luaL_Buffer ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 size_t LUAL_BUFFERSIZE ; 
 size_t FUNC0 (char*,int,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC6( lua_State *L, size_t i_len, FILE* p_file )
{
    size_t i_toread = LUAL_BUFFERSIZE;
    size_t i_read;
    luaL_Buffer b;
    FUNC2( L, &b );
    do {
        char *p = FUNC3(&b);
        if (i_toread > i_len)
            i_toread = i_len;
        i_read = FUNC0(p, sizeof(char), i_toread, p_file);
        FUNC1(&b, i_read);
        i_len -= i_read;
    } while (i_len > 0 && i_read == i_toread);
    FUNC4(&b);
    return (i_len == 0 || FUNC5(L, -1) > 0);
}