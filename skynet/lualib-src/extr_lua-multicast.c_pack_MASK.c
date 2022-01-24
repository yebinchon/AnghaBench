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
typedef  scalar_t__ uint32_t ;
struct mc_package {void* data; scalar_t__ size; scalar_t__ reference; } ;
typedef  int /*<<< orphan*/  ret ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct mc_package**) ; 
 void* FUNC2 (int) ; 

__attribute__((used)) static int
FUNC3(lua_State *L, void *data, size_t size) {
	struct mc_package * pack = FUNC2(sizeof(struct mc_package));
	pack->reference = 0;
	pack->size = (uint32_t)size;
	pack->data = data;
	struct mc_package ** ret = FUNC2(sizeof(*ret));
	*ret = pack;
	FUNC1(L, ret);
	FUNC0(L, sizeof(ret));
	return 2;
}