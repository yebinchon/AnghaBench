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
struct TYPE_3__ {int /*<<< orphan*/  encode_sparse_safe; int /*<<< orphan*/  encode_sparse_ratio; int /*<<< orphan*/  encode_sparse_convert; } ;
typedef  TYPE_1__ json_config_t ;

/* Variables and functions */
 int /*<<< orphan*/  INT_MAX ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(lua_State *l)
{
    json_config_t *cfg = FUNC0(l, 3);

    FUNC1(l, 1, &cfg->encode_sparse_convert, NULL, 1);
    FUNC2(l, 2, &cfg->encode_sparse_ratio, 0, INT_MAX);
    FUNC2(l, 3, &cfg->encode_sparse_safe, 0, INT_MAX);

    return 3;
}