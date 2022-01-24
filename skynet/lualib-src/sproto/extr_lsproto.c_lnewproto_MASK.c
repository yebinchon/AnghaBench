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
struct sproto {int dummy; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int,size_t*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct sproto*) ; 
 struct sproto* FUNC2 (void*,size_t) ; 

__attribute__((used)) static int
FUNC3(lua_State *L) {
	struct sproto * sp;
	size_t sz;
	void * buffer = (void *)FUNC0(L,1,&sz);
	sp = FUNC2(buffer, sz);
	if (sp) {
		FUNC1(L, sp);
		return 1;
	}
	return 0;
}