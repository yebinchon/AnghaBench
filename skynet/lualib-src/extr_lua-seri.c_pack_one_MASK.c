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
struct write_block {int dummy; } ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  lua_Number ;
typedef  int /*<<< orphan*/  lua_Integer ;

/* Variables and functions */
#define  LUA_TBOOLEAN 133 
#define  LUA_TLIGHTUSERDATA 132 
#define  LUA_TNIL 131 
#define  LUA_TNUMBER 130 
#define  LUA_TSTRING 129 
#define  LUA_TTABLE 128 
 int MAX_DEPTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 char* FUNC5 (int /*<<< orphan*/ *,int,size_t*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (struct write_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct write_block*) ; 
 int /*<<< orphan*/  FUNC12 (struct write_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct write_block*) ; 
 int /*<<< orphan*/  FUNC14 (struct write_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct write_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct write_block*,char const*,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,struct write_block*,int,int) ; 

__attribute__((used)) static void
FUNC18(lua_State *L, struct write_block *b, int index, int depth) {
	if (depth > MAX_DEPTH) {
		FUNC11(b);
		FUNC0(L, "serialize can't pack too depth table");
	}
	int type = FUNC8(L,index);
	switch(type) {
	case LUA_TNIL:
		FUNC13(b);
		break;
	case LUA_TNUMBER: {
		if (FUNC2(L, index)) {
			lua_Integer x = FUNC4(L,index);
			FUNC12(b, x);
		} else {
			lua_Number n = FUNC6(L,index);
			FUNC15(b,n);
		}
		break;
	}
	case LUA_TBOOLEAN: 
		FUNC10(b, FUNC3(L,index));
		break;
	case LUA_TSTRING: {
		size_t sz = 0;
		const char *str = FUNC5(L,index,&sz);
		FUNC16(b, str, (int)sz);
		break;
	}
	case LUA_TLIGHTUSERDATA:
		FUNC14(b, FUNC7(L,index));
		break;
	case LUA_TTABLE: {
		if (index < 0) {
			index = FUNC1(L) + index + 1;
		}
		FUNC17(L, b, index, depth+1);
		break;
	}
	default:
		FUNC11(b);
		FUNC0(L, "Unsupport type %s to serialize", FUNC9(L, type));
	}
}