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
struct buffer {int /*<<< orphan*/  size; scalar_t__ ptr; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int OP_GET_MORE ; 
 int /*<<< orphan*/  FUNC0 (struct buffer*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int,size_t*) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC5 (int /*<<< orphan*/ *,int,size_t*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct buffer*) ; 
 int /*<<< orphan*/  FUNC8 (struct buffer*,char const*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct buffer*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct buffer*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct buffer*,char const*,size_t) ; 

__attribute__((used)) static int
FUNC12(lua_State *L) {
	int id = FUNC2(L, 1);
	size_t sz = 0;
	const char * name = FUNC3(L,2,&sz);
	int number = FUNC2(L, 3);
	size_t cursor_len = 0;
	const char * cursor_id = FUNC5(L, 4, &cursor_len);
	if (cursor_len != 8) {
		return FUNC4(L, "Invalid cursor id");
	}

	struct buffer buf;
	FUNC0(&buf);
		int len = FUNC7(&buf);
		FUNC9(&buf, id);
		FUNC9(&buf, 0);
		FUNC9(&buf, OP_GET_MORE);
		FUNC9(&buf, 0);
		FUNC11(&buf, name, sz);
		FUNC9(&buf, number);
		FUNC8(&buf, cursor_id, 8);
		FUNC10(&buf, buf.size, len);

		FUNC6(L, (const char *)buf.ptr, buf.size);
	FUNC1(&buf);

	return 1;
}