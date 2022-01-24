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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 scalar_t__ LUA_TSTRING ; 
 size_t MULTI_PART ; 
 int TEMP_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int,size_t*) ; 
 void* FUNC8 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int*,void*,size_t) ; 

__attribute__((used)) static int
FUNC11(lua_State *L) {
	uint32_t session = (uint32_t)FUNC2(L,1);
	// clusterd.lua:command.socket call lpackresponse,
	// and the msg/sz is return by skynet.rawcall , so don't free(msg)
	int ok = FUNC6(L,2);
	void * msg;
	size_t sz;
	
	if (FUNC9(L,3) == LUA_TSTRING) {
		msg = (void *)FUNC7(L, 3, &sz);
	} else {
		msg = FUNC8(L,3);
		sz = (size_t)FUNC2(L, 4);
	}

	if (!ok) {
		if (sz > MULTI_PART) {
			// truncate the error msg if too long
			sz = MULTI_PART;
		}
	} else {
		if (sz > MULTI_PART) {
			// return 
			int part = (sz - 1) / MULTI_PART + 1;
			FUNC3(L, part+1, 0);
			uint8_t buf[TEMP_LENGTH];

			// multi part begin
			FUNC0(L, buf, 9);
			FUNC1(buf+2, session);
			buf[6] = 2;
			FUNC1(buf+7, (uint32_t)sz);
			FUNC4(L, (const char *)buf, 11);
			FUNC5(L, -2, 1);

			char * ptr = msg;
			int i;
			for (i=0;i<part;i++) {
				int s;
				if (sz > MULTI_PART) {
					s = MULTI_PART;
					buf[6] = 3;
				} else {
					s = sz;
					buf[6] = 4;
				}
				FUNC0(L, buf, s+5);
				FUNC1(buf+2, session);
				FUNC10(buf+7,ptr,s);
				FUNC4(L, (const char *)buf, s+7);
				FUNC5(L, -2, i+2);
				sz -= s;
				ptr += s;
			}
			return 1;
		}
	}

	uint8_t buf[TEMP_LENGTH];
	FUNC0(L, buf, sz+5);
	FUNC1(buf+2, session);
	buf[6] = ok;
	FUNC10(buf+7,msg,sz);

	FUNC4(L, (const char *)buf, sz+7);

	return 1;
}