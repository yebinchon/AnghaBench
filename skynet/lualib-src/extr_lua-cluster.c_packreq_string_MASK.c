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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int MULTI_PART ; 
 int TEMP_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*,int) ; 
 char* FUNC4 (int /*<<< orphan*/ *,int,size_t*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 char const* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 

__attribute__((used)) static int
FUNC9(lua_State *L, int session, void * msg, uint32_t sz, int is_push) {
	size_t namelen = 0;
	const char *name = FUNC4(L, 1, &namelen);
	if (name == NULL || namelen < 1 || namelen > 255) {
		FUNC8(msg);
		if (name == NULL) {
			FUNC2(L, "name is not a string, it's a %s", FUNC6(L, FUNC5(L, 1)));
		} else {
			FUNC2(L, "name is too long %s", name);
		}
	}

	uint8_t buf[TEMP_LENGTH];
	if (sz < MULTI_PART) {
		FUNC0(L, buf, sz+6+namelen);
		buf[2] = 0x80;
		buf[3] = (uint8_t)namelen;
		FUNC7(buf+4, name, namelen);
		FUNC1(buf+4+namelen, is_push ? 0 : (uint32_t)session);
		FUNC7(buf+8+namelen,msg,sz);

		FUNC3(L, (const char *)buf, sz+8+namelen);
		return 0;
	} else {
		int part = (sz - 1) / MULTI_PART + 1;
		FUNC0(L, buf, 10+namelen);
		buf[2] = is_push ? 0xc1 : 0x81;	// multi push or request
		buf[3] = (uint8_t)namelen;
		FUNC7(buf+4, name, namelen);
		FUNC1(buf+4+namelen, (uint32_t)session);
		FUNC1(buf+8+namelen, sz);

		FUNC3(L, (const char *)buf, 12+namelen);
		return part;
	}
}