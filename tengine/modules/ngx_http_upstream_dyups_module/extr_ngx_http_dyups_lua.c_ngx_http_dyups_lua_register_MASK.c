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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  ngx_http_lua_delete_upstream ; 
 int /*<<< orphan*/  ngx_http_lua_update_upstream ; 

__attribute__((used)) static int
FUNC3(lua_State *L)
{
    FUNC0(L, 0, 1);

    FUNC1(L, ngx_http_lua_update_upstream);
    FUNC2(L, -2, "update");

    FUNC1(L, ngx_http_lua_delete_upstream);
    FUNC2(L, -2, "delete");

    return 1;
}