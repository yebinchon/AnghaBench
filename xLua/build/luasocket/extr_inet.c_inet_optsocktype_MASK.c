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
#define  SOCK_DGRAM 129 
#define  SOCK_STREAM 128 
 size_t FUNC0 (int /*<<< orphan*/ *,int,char const*,char const**) ; 

int FUNC1(lua_State* L, int narg, const char* def)
{
    static const char* optname[] = { "stream", "dgram", NULL };
    static int optvalue[] = { SOCK_STREAM, SOCK_DGRAM, 0 };

    return optvalue[FUNC0(L, narg, def, optname)];
}