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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  void* uint32_t ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  size_t lua_Integer ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *,int,size_t*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*,size_t) ; 
 void* FUNC4 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int
FUNC5(lua_State *L) {
	size_t sz;
	const char * buf = FUNC0(L, 1, &sz);
	if (sz < 5) {
		return 0;
	}
	uint32_t session = FUNC4((const uint8_t *)buf);
	FUNC2(L, (lua_Integer)session);
	switch(buf[4]) {
	case 0:	// error
		FUNC1(L, 0);
		FUNC3(L, buf+5, sz-5);
		return 3;
	case 1:	// ok
	case 4:	// multi end
		FUNC1(L, 1);
		FUNC3(L, buf+5, sz-5);
		return 3;
	case 2:	// multi begin
		if (sz != 9) {
			return 0;
		}
		sz = FUNC4((const uint8_t *)buf+5);
		FUNC1(L, 1);
		FUNC2(L, sz);
		FUNC1(L, 1);
		return 4;
	case 3:	// multi part
		FUNC1(L, 1);
		FUNC3(L, buf+5, sz-5);
		FUNC1(L, 1);
		return 4;
	default:
		return 0;
	}
}