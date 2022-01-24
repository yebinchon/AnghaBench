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
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int CACHE_SIZE ; 
 scalar_t__ EAGAIN ; 
 scalar_t__ EINTR ; 
 scalar_t__ errno ; 
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC4 (int,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 

__attribute__((used)) static int
FUNC6(lua_State *L) {
	int fd = FUNC0(L,1);

	char buffer[CACHE_SIZE];
	int r = FUNC4(fd, buffer, CACHE_SIZE, 0);
	if (r == 0) {
		FUNC2(L, "");
		// close
		return 1;
	}
	if (r < 0) {
		if (errno == EAGAIN || errno == EINTR) {
			return 0;
		}
		FUNC1(L, "socket error: %s", FUNC5(errno));
	}
	FUNC3(L, buffer, r);
	return 1;
}