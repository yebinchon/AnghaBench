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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (char**,size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC3( lua_State *L, FILE* p_file )
{
    char* psz_line = NULL;
    size_t i_buffer;
    ssize_t i_len = FUNC1( &psz_line, &i_buffer, p_file );
    if ( i_len == -1 )
        return 0;
    if( psz_line[i_len - 1] == '\n' )
        psz_line[--i_len] = 0;
    FUNC2( L, psz_line );
    FUNC0( psz_line );
    return 1;
}