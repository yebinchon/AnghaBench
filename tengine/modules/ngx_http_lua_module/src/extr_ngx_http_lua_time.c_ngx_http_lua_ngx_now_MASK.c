#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {long double msec; scalar_t__ sec; } ;
typedef  TYPE_1__ ngx_time_t ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  lua_Number ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 () ; 

__attribute__((used)) static int
FUNC2(lua_State *L)
{
    ngx_time_t              *tp;

    tp = FUNC1();

    FUNC0(L, (lua_Number) (tp->sec + tp->msec / 1000.0L));

    return 1;
}