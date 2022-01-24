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
 int /*<<< orphan*/  OP_UPDATE ; 
 int /*<<< orphan*/  FUNC0 (struct buffer*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC5 (int /*<<< orphan*/ *,int,size_t*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,int) ; 
 int FUNC10 (struct buffer*) ; 
 int /*<<< orphan*/  FUNC11 (struct buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct buffer*,int,int) ; 
 int /*<<< orphan*/  FUNC13 (struct buffer*,char const*,size_t) ; 

__attribute__((used)) static int
FUNC14(lua_State *L) {
	document selector  = FUNC9(L,3);
	document update = FUNC9(L,4);
	if (selector == NULL || update == NULL) {
		FUNC6(L, "Invalid param");
	}
	size_t sz = 0;
	const char * name = FUNC5(L,1,&sz);

	luaL_Buffer b;
	FUNC4(L, &b);

	struct buffer buf;
	FUNC0(&buf);
		// make package header, don't raise L error
		int len = FUNC10(&buf);
		FUNC11(&buf, 0);
		FUNC11(&buf, 0);
		FUNC11(&buf, OP_UPDATE);
		FUNC11(&buf, 0);
		FUNC13(&buf, name, sz);
		FUNC11(&buf, FUNC8(L,2));

		int32_t selector_len = FUNC2(selector);
		int32_t update_len = FUNC2(update);

		int total = buf.size + selector_len + update_len;
		FUNC12(&buf, total, len);

		FUNC3(&b, (const char *)buf.ptr, buf.size);
	FUNC1(&buf);

	FUNC3(&b, (const char *)selector, selector_len);
	FUNC3(&b, (const char *)update, update_len);

	FUNC7(&b);

	return 1;
}