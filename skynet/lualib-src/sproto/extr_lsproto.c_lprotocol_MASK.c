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
struct sproto_type {int dummy; } ;
struct sproto {int dummy; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int LUA_TNUMBER ; 
 int /*<<< orphan*/  SPROTO_REQUEST ; 
 int /*<<< orphan*/  SPROTO_RESPONSE ; 
 int FUNC0 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct sproto_type*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int) ; 
 char* FUNC6 (int /*<<< orphan*/ *,int) ; 
 struct sproto* FUNC7 (int /*<<< orphan*/ *,int) ; 
 int FUNC8 (int /*<<< orphan*/ *,int) ; 
 char* FUNC9 (struct sproto*,int) ; 
 struct sproto_type* FUNC10 (struct sproto*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct sproto*,int) ; 
 int FUNC12 (struct sproto*,char const*) ; 

__attribute__((used)) static int
FUNC13(lua_State *L) {
	struct sproto * sp = FUNC7(L, 1);
	struct sproto_type * request;
	struct sproto_type * response;
	int t;
	int tag;
	if (sp == NULL) {
		return FUNC0(L, 1, "Need a sproto_type object");
	}
	t = FUNC8(L,2);
	if (t == LUA_TNUMBER) {
		const char * name;
		tag = FUNC5(L, 2);
		name = FUNC9(sp, tag);
		if (name == NULL)
			return 0;
		FUNC4(L, name);
	} else {
		const char * name = FUNC6(L, 2);
		if (name == NULL) {
			return FUNC0(L, 2, "Should be number or string");
		}
		tag = FUNC12(sp, name);
		if (tag < 0)
			return 0;
		FUNC1(L, tag);
	}
	request = FUNC10(sp, tag, SPROTO_REQUEST);
	if (request == NULL) {
		FUNC3(L);
	} else {
		FUNC2(L, request);
	}
	response = FUNC10(sp, tag, SPROTO_RESPONSE);
	if (response == NULL) {
		if (FUNC11(sp, tag)) {
			FUNC2(L, NULL);	// response nil
		} else {
			FUNC3(L);
		}
	} else {
		FUNC2(L, response);
	}
	return 3;
}