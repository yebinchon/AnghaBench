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
struct channel_box {struct channel* c; } ;
struct channel {int dummy; } ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_3__ {char* member_0; int /*<<< orphan*/ * member_1; } ;
typedef  TYPE_1__ luaL_Reg ;

/* Variables and functions */
 int /*<<< orphan*/  METANAME ; 
 struct channel* FUNC0 (struct channel*) ; 
 struct channel* FUNC1 () ; 
 int /*<<< orphan*/ * lread ; 
 int /*<<< orphan*/  lrelease ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct channel_box* FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * lwrite ; 

__attribute__((used)) static struct channel *
FUNC9(lua_State *L, struct channel *c) {
	if (c == NULL) {
		c = FUNC1();
	} else {
		c = FUNC0(c);
	}
	if (c == NULL) {
		FUNC2(L, "new channel failed");
		// never go here
	}
	struct channel_box * cb = FUNC5(L, sizeof(*cb));
	cb->c = c;
	if (FUNC4(L, METANAME)) {
		luaL_Reg l[]={
			{ "read", lread },
			{ "write", lwrite },
			{ NULL, NULL },
		};
		FUNC3(L,l);
		FUNC7(L, -2, "__index");
		FUNC6(L, lrelease);
		FUNC7(L, -2, "__gc");
	}
	FUNC8(L, -2);
	return c;
}