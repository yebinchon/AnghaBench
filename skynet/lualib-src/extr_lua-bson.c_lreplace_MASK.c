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
struct bson {int member_1; int /*<<< orphan*/ * member_2; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  void* int64_t ;
typedef  void* int32_t ;

/* Variables and functions */
#define  BSON_BOOLEAN 134 
#define  BSON_DATE 133 
#define  BSON_INT32 132 
#define  BSON_INT64 131 
#define  BSON_OBJECTID 130 
#define  BSON_REAL 129 
#define  BSON_TIMESTAMP 128 
 int BSON_TYPE_SHIFT ; 
 scalar_t__ LUA_TNUMBER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 void* FUNC8 (int /*<<< orphan*/ *,int) ; 
 int FUNC9 (int /*<<< orphan*/ *,int) ; 
 int FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int,struct bson*) ; 
 int /*<<< orphan*/  FUNC13 (struct bson*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct bson*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct bson*,void*) ; 
 int /*<<< orphan*/  FUNC16 (struct bson*,void*) ; 

__attribute__((used)) static int
FUNC17(lua_State *L) {
	FUNC2(L,1);
	if (!FUNC4(L,-1)) {
		return FUNC1(L, "call makeindex first");
	}
	FUNC5(L,2);
	if (FUNC6(L, -2) != LUA_TNUMBER) {
		return FUNC1(L, "Can't replace key : %s", FUNC10(L,2));
	}
	int id = FUNC8(L, -1);
	int type = id & ((1<<(BSON_TYPE_SHIFT)) - 1);
	int offset = id >> BSON_TYPE_SHIFT;
	uint8_t * start = FUNC11(L,1);
	struct bson b = { 0,16, *(start + offset) };
	switch (type) {
	case BSON_REAL:
		FUNC14(&b, FUNC0(L, 3));
		break;
	case BSON_BOOLEAN:
		FUNC13(&b, FUNC7(L,3));
		break;
	case BSON_OBJECTID:
	case BSON_DATE:
	case BSON_TIMESTAMP:
		FUNC12(L, type, &b);
		break;
	case BSON_INT32: {
		if (!FUNC3(L, 3)) {
			FUNC1(L, "%f must be a 32bit integer ", FUNC9(L, 3));
		}
		int32_t i = FUNC8(L,3);
		FUNC15(&b, i);
		break;
	}
	case BSON_INT64: {
		if (!FUNC3(L, 3)) {
			FUNC1(L, "%f must be a 64bit integer ", FUNC9(L, 3));
		}
		int64_t i = FUNC8(L,3);
		FUNC16(&b, i);
		break;
	}
	default:
		FUNC1(L, "Can't replace type %d", type);
		break;
	}
	return 0;
}