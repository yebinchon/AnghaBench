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
struct skynet_context {int dummy; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 struct skynet_context* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 char* FUNC5 (struct skynet_context*,char const*,char const*) ; 

__attribute__((used)) static int
FUNC6(lua_State *L) {
	struct skynet_context * context = FUNC3(L, FUNC4(1));
	const char * cmd = FUNC0(L,1);
	const char * result;
	const char * parm = NULL;
	if (FUNC1(L) == 2) {
		parm = FUNC0(L,2);
	}

	result = FUNC5(context, cmd, parm);
	if (result) {
		FUNC2(L, result);
		return 1;
	}
	return 0;
}