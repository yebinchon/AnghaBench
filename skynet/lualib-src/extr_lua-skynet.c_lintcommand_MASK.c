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
typedef  int /*<<< orphan*/  lua_Integer ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,char const*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,double) ; 
 struct skynet_context* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 char* FUNC9 (struct skynet_context*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,int) ; 
 double FUNC11 (char const*,char**) ; 
 int /*<<< orphan*/  FUNC12 (char const*,char**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC13(lua_State *L) {
	struct skynet_context * context = FUNC7(L, FUNC8(1));
	const char * cmd = FUNC1(L,1);
	const char * result;
	const char * parm = NULL;
	char tmp[64];	// for integer parm
	if (FUNC3(L) == 2) {
		if (FUNC4(L, 2)) {
			int32_t n = (int32_t)FUNC0(L,2);
			FUNC10(tmp, "%d", n);
			parm = tmp;
		} else {
			parm = FUNC1(L,2);
		}
	}

	result = FUNC9(context, cmd, parm);
	if (result) {
		char *endptr = NULL; 
		lua_Integer r = FUNC12(result, &endptr, 0);
		if (endptr == NULL || *endptr != '\0') {
			// may be real number
			double n = FUNC11(result, &endptr);
			if (endptr == NULL || *endptr != '\0') {
				return FUNC2(L, "Invalid result %s", result);
			} else {
				FUNC6(L, n);
			}
		} else {
			FUNC5(L, r);
		}
		return 1;
	}
	return 0;
}