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
 int OP_KILL_CURSORS ; 
 int /*<<< orphan*/  FUNC0 (struct buffer*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int,size_t*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct buffer*) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer*,char const*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct buffer*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct buffer*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC9(lua_State *L) {
	size_t cursor_len = 0;
	const char * cursor_id = FUNC3(L, 1, &cursor_len);
	if (cursor_len != 8) {
		return FUNC2(L, "Invalid cursor id");
	}

	struct buffer buf;
	FUNC0(&buf);

	int len = FUNC5(&buf);
	FUNC7(&buf, 0);
	FUNC7(&buf, 0);
	FUNC7(&buf, OP_KILL_CURSORS);

	FUNC7(&buf, 0);
	FUNC7(&buf, 1);
	FUNC6(&buf, cursor_id, 8);

	FUNC8(&buf, buf.size, len);

	FUNC4(L, (const char *)buf.ptr, buf.size);
	FUNC1(&buf);

	return 1;
}