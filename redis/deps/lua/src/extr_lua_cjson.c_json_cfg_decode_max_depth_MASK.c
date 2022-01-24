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
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_3__ {int /*<<< orphan*/  decode_max_depth; } ;
typedef  TYPE_1__ json_config_t ;

/* Variables and functions */
 int /*<<< orphan*/  INT_MAX ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(lua_State *l)
{
    json_config_t *cfg = FUNC0(l, 1);

    return FUNC1(l, 1, &cfg->decode_max_depth, 1, INT_MAX);
}