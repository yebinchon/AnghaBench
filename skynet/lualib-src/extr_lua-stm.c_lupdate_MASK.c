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
struct boxstm {int /*<<< orphan*/  obj; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int,size_t*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 void* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (void*,char const*,size_t) ; 
 void* FUNC5 (size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,void*,size_t) ; 

__attribute__((used)) static int
FUNC7(lua_State *L) {
	struct boxstm * box = FUNC3(L, 1);
	void * msg;
	size_t sz;
	if (FUNC2(L, 2)) {
		msg = FUNC3(L, 2);
		sz = (size_t)FUNC0(L, 3);
	} else {
		const char * tmp = FUNC1(L,2,&sz);
		msg = FUNC5(sz);
		FUNC4(msg, tmp, sz);
	}
	FUNC6(box->obj, msg, sz);

	return 0;
}