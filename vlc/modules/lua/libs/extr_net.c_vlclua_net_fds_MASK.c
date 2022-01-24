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
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC3( lua_State *L )
{
    int **ppi_fd = (int**)FUNC0( L, 1, "net_listen" );
    int *pi_fd = *ppi_fd;

    int i_count = 0;
    while( pi_fd[i_count] != -1 )
        FUNC1( L, FUNC2( L, pi_fd[i_count++] ) );

    return i_count;
}