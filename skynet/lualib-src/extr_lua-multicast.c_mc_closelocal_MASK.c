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
struct mc_package {struct mc_package* data; int /*<<< orphan*/  reference; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 struct mc_package* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mc_package*) ; 

__attribute__((used)) static int
FUNC4(lua_State *L) {
	struct mc_package *pack = FUNC2(L,1);

	int ref = FUNC0(&pack->reference);
	if (ref <= 0) {
		FUNC3(pack->data);
		FUNC3(pack);
		if (ref < 0) {
			return FUNC1(L, "Invalid multicast package reference %d", ref);
		}
	}

	return 0;
}