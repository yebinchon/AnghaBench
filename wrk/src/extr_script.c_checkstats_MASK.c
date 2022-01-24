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
typedef  int /*<<< orphan*/  stats ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/ ** FUNC1 (int /*<<< orphan*/ *,int,char*) ; 

__attribute__((used)) static stats *FUNC2(lua_State *L) {
    stats **s = FUNC1(L, 1, "wrk.stats");
    FUNC0(L, s != NULL, 1, "`stats' expected");
    return *s;
}