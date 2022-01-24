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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int
FUNC5(lua_State *L, const uint8_t * buf, int sz, int is_push) {
	if (sz != 13) {
		return FUNC0(L, "Invalid cluster message size %d (multi req must be 13)", sz);
	}
	uint32_t address = FUNC4(buf+1);
	uint32_t session = FUNC4(buf+5);
	uint32_t size = FUNC4(buf+9);
	FUNC2(L, address);
	FUNC2(L, session);
	FUNC3(L);
	FUNC2(L, size);
	FUNC1(L, 1);	// padding multi part
	FUNC1(L, is_push);

	return 6;
}