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
 struct boxstm* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 void* FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (void*,char const*,size_t) ; 
 void* FUNC9 (size_t) ; 
 int /*<<< orphan*/  FUNC10 (void*,size_t) ; 

__attribute__((used)) static int
FUNC11(lua_State *L) {
	void * msg;
	size_t sz;
	if (FUNC2(L,1)) {
		msg = FUNC6(L, 1);
		sz = (size_t)FUNC0(L, 2);
	} else {
		const char * tmp = FUNC1(L,1,&sz);
		msg = FUNC9(sz);
		FUNC8(msg, tmp, sz);
	}
	struct boxstm * box = FUNC3(L, sizeof(*box));
	box->obj = FUNC10(msg,sz);
	FUNC4(L, FUNC7(1));
	FUNC5(L, -2);

	return 1;
}