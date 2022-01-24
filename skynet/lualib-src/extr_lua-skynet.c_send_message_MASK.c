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
typedef  scalar_t__ uint32_t ;
struct skynet_context {int dummy; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
#define  LUA_TLIGHTUSERDATA 129 
 int LUA_TNUMBER ; 
#define  LUA_TSTRING 128 
 int PTYPE_TAG_ALLOCSESSION ; 
 int PTYPE_TAG_DONTCOPY ; 
 char* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int,size_t*) ; 
 void* FUNC8 (int /*<<< orphan*/ *,int) ; 
 int FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int FUNC11 (int) ; 
 int FUNC12 (struct skynet_context*,int,scalar_t__,int,int,void*,int) ; 
 int FUNC13 (struct skynet_context*,int,char const*,int,int,void*,int) ; 

__attribute__((used)) static int
FUNC14(lua_State *L, int source, int idx_type) {
	struct skynet_context * context = FUNC8(L, FUNC11(1));
	uint32_t dest = (uint32_t)FUNC6(L, 1);
	const char * dest_string = NULL;
	if (dest == 0) {
		if (FUNC9(L,1) == LUA_TNUMBER) {
			return FUNC2(L, "Invalid service address 0");
		}
		dest_string = FUNC0(L, 1);
	}

	int type = FUNC1(L, idx_type+0);
	int session = 0;
	if (FUNC3(L,idx_type+1)) {
		type |= PTYPE_TAG_ALLOCSESSION;
	} else {
		session = FUNC1(L,idx_type+1);
	}

	int mtype = FUNC9(L,idx_type+2);
	switch (mtype) {
	case LUA_TSTRING: {
		size_t len = 0;
		void * msg = (void *)FUNC7(L,idx_type+2,&len);
		if (len == 0) {
			msg = NULL;
		}
		if (dest_string) {
			session = FUNC13(context, source, dest_string, type, session , msg, len);
		} else {
			session = FUNC12(context, source, dest, type, session , msg, len);
		}
		break;
	}
	case LUA_TLIGHTUSERDATA: {
		void * msg = FUNC8(L,idx_type+2);
		int size = FUNC1(L,idx_type+3);
		if (dest_string) {
			session = FUNC13(context, source, dest_string, type | PTYPE_TAG_DONTCOPY, session, msg, size);
		} else {
			session = FUNC12(context, source, dest, type | PTYPE_TAG_DONTCOPY, session, msg, size);
		}
		break;
	}
	default:
		FUNC2(L, "invalid param %s", FUNC10(L, FUNC9(L,idx_type+2)));
	}
	if (session < 0) {
		if (session == -2) {
			// package is too large
			FUNC4(L, 0);
			return 1;
		}
		// send to invalid address
		// todo: maybe throw an error would be better
		return 0;
	}
	FUNC5(L,session);
	return 1;
}