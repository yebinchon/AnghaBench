#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_2__ {int luabp; scalar_t__ active; } ;

/* Variables and functions */
 TYPE_1__ ldb ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 

int FUNC1(lua_State *lua) {
    if (ldb.active) {
        ldb.luabp = 1;
        FUNC0(lua,1);
    } else {
        FUNC0(lua,0);
    }
    return 1;
}