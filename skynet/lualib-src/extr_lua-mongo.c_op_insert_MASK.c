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
typedef  scalar_t__ document ;

/* Variables and functions */
 int /*<<< orphan*/  OP_INSERT ; 
 int /*<<< orphan*/  FUNC0 (struct buffer*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC6 (int /*<<< orphan*/ *,int,size_t*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,int) ; 
 int FUNC14 (struct buffer*) ; 
 int /*<<< orphan*/  FUNC15 (struct buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct buffer*,int,int) ; 
 int /*<<< orphan*/  FUNC17 (struct buffer*,char const*,size_t) ; 

__attribute__((used)) static int
FUNC18(lua_State *L) {
	size_t sz = 0;
	const char * name = FUNC6(L,2,&sz);
	int dsz = FUNC2(L);

	luaL_Buffer b;
	FUNC5(L, &b);

	struct buffer buf;
	FUNC0(&buf);
		// make package header, don't raise L error
		int len = FUNC14(&buf);
		FUNC15(&buf, 0);
		FUNC15(&buf, 0);
		FUNC15(&buf, OP_INSERT);
		FUNC15(&buf, FUNC12(L,1));
		FUNC17(&buf, name, sz);

		int total = buf.size + dsz;
		FUNC16(&buf, total, len);

		FUNC4(&b, (const char *)buf.ptr, buf.size);
	FUNC1(&buf);
	
	if (FUNC8(L,3)) {
		document doc = FUNC13(L,3);
		FUNC4(&b, (const char *)doc, FUNC3(doc));
	} else {
		int s = FUNC11(L, 3);
		int i;
		for (i=1;i<=s;i++) {
			FUNC10(L,3,i);
			document doc = FUNC13(L,-1);
			FUNC9(L,1);	// must call lua_pop before luaL_addlstring, because addlstring may change stack top
			FUNC4(&b, (const char *)doc, FUNC3(doc));
		}
	}

	FUNC7(&b);

	return 1;
}