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
 int /*<<< orphan*/  NGX_AGAIN ; 
 int /*<<< orphan*/  NGX_DECLINED ; 
 int /*<<< orphan*/  NGX_DONE ; 
 int /*<<< orphan*/  NGX_ERROR ; 
 int /*<<< orphan*/  NGX_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,char*) ; 

void
FUNC3(lua_State *L)
{
    /* {{{ core constants */
    FUNC0(L, NGX_OK);
    FUNC2(L, -2, "OK");

    FUNC0(L, NGX_AGAIN);
    FUNC2(L, -2, "AGAIN");

    FUNC0(L, NGX_DONE);
    FUNC2(L, -2, "DONE");

    FUNC0(L, NGX_DECLINED);
    FUNC2(L, -2, "DECLINED");

    FUNC0(L, NGX_ERROR);
    FUNC2(L, -2, "ERROR");

    FUNC1(L, NULL);
    FUNC2(L, -2, "null");
    /* }}} */
}