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
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  type ;
struct read_block {int dummy; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_MINSTACK ; 
 scalar_t__ LUA_TSTRING ; 
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int,size_t*) ; 
 void* FUNC7 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct read_block*,int,int) ; 
 int* FUNC10 (struct read_block*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct read_block*,void*,int) ; 

int
FUNC12(lua_State *L) {
	if (FUNC4(L,1)) {
		return 0;
	}
	void * buffer;
	int len;
	if (FUNC8(L,1) == LUA_TSTRING) {
		size_t sz;
		 buffer = (void *)FUNC6(L,1,&sz);
		len = (int)sz;
	} else {
		buffer = FUNC7(L,1);
		len = FUNC0(L,2);
	}
	if (len == 0) {
		return 0;
	}
	if (buffer == NULL) {
		return FUNC2(L, "deserialize null pointer");
	}

	FUNC5(L,1);
	struct read_block rb;
	FUNC11(&rb, buffer, len);

	int i;
	for (i=0;;i++) {
		if (i%8==7) {
			FUNC1(L,LUA_MINSTACK,NULL);
		}
		uint8_t type = 0;
		uint8_t *t = FUNC10(&rb, sizeof(type));
		if (t==NULL)
			break;
		type = *t;
		FUNC9(L, &rb, type & 0x7, type>>3);
	}

	// Need not free buffer

	return FUNC3(L) - 1;
}