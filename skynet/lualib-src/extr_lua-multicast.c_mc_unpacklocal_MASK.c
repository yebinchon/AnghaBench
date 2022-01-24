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
struct mc_package {scalar_t__ size; struct mc_package* data; } ;
typedef  int /*<<< orphan*/  pack ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  lua_Integer ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct mc_package*) ; 
 struct mc_package** FUNC4 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC5(lua_State *L) {
	struct mc_package ** pack = FUNC4(L,1);
	int sz = FUNC0(L,2);
	if (sz != sizeof(pack)) {
		return FUNC1(L, "Invalid multicast package size %d", sz);
	}
	FUNC3(L, *pack);
	FUNC3(L, (*pack)->data);
	FUNC2(L, (lua_Integer)((*pack)->size));
	return 3;
}