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
struct mc_package {int reference; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct mc_package*) ; 
 struct mc_package** FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mc_package**) ; 

__attribute__((used)) static int
FUNC5(lua_State *L) {
	struct mc_package ** pack = FUNC3(L,1);
	int ref = FUNC0(L,2);
	if ((*pack)->reference != 0) {
		return FUNC1(L, "Can't bind a multicast package more than once");
	}
	(*pack)->reference = ref;

	FUNC2(L, *pack);

	FUNC4(pack);

	return 1;
}