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
struct buffer {int size; scalar_t__ ptr; } ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  luaL_Buffer ;
typedef  int int32_t ;
typedef  int /*<<< orphan*/ * document ;

/* Variables and functions */
 int OP_QUERY ; 
 int /*<<< orphan*/  FUNC0 (struct buffer*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int) ; 
 char* FUNC6 (int /*<<< orphan*/ *,int,size_t*) ; 
 int FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,int) ; 
 int FUNC10 (struct buffer*) ; 
 int /*<<< orphan*/  FUNC11 (struct buffer*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct buffer*,int,int) ; 
 int /*<<< orphan*/  FUNC13 (struct buffer*,char const*,size_t) ; 

__attribute__((used)) static int
FUNC14(lua_State *L) {
	int id = FUNC5(L,1);
	document query = FUNC9(L,6);
	if (query == NULL) {
		return FUNC7(L, "require query document");
	}
	document selector = FUNC9(L,7);
	int flags = FUNC5(L, 2);
	size_t nsz = 0;
	const char *name = FUNC6(L,3,&nsz);
	int skip = FUNC5(L, 4);
	int number = FUNC5(L, 5);

	luaL_Buffer b;
	FUNC4(L,&b);

	struct buffer buf;
	FUNC0(&buf);
		int len = FUNC10(&buf);
		FUNC11(&buf, id);
		FUNC11(&buf, 0);
		FUNC11(&buf, OP_QUERY);
		FUNC11(&buf, flags);
		FUNC13(&buf, name, nsz);
		FUNC11(&buf, skip);
		FUNC11(&buf, number);

		int32_t query_len = FUNC2(query);
		int total = buf.size + query_len;
		int32_t selector_len = 0;
		if (selector) {
			selector_len = FUNC2(selector);
			total += selector_len;
		}

		FUNC12(&buf, total, len);
		FUNC3(&b, (const char *)buf.ptr, buf.size);
	FUNC1(&buf);

	FUNC3(&b, (const char *)query, query_len);

	if (selector) {
		FUNC3(&b, (const char *)selector, selector_len);
	}

	FUNC8(&b);

	return 1;
}