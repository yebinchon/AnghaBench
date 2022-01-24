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
typedef  int lua_Integer ;

/* Variables and functions */
#define  BSON_BINARY 139 
#define  BSON_CODEWS 138 
#define  BSON_DATE 137 
#define  BSON_DBPOINTER 136 
#define  BSON_JSCODE 135 
#define  BSON_MAXKEY 134 
#define  BSON_MINKEY 133 
#define  BSON_NULL 132 
#define  BSON_OBJECTID 131 
#define  BSON_REGEX 130 
#define  BSON_SYMBOL 129 
#define  BSON_TIMESTAMP 128 
 int FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int
FUNC5(lua_State *L, int subtype, const uint8_t * buf, size_t sz) {
	switch(subtype) {
	case BSON_BINARY:
		FUNC3(L, FUNC4(6));
		FUNC2(L, (const char *)buf+1, sz-1);
		FUNC1(L, buf[0]);
		return 3;
	case BSON_OBJECTID: {
		if (sz != 12) {
			return FUNC0(L, "Invalid object id");
		}
		char oid[24];
		int i;
		const uint8_t * id = buf;
		static char *hex = "0123456789abcdef";
		for (i=0;i<12;i++) {
			oid[i*2] = hex[id[i] >> 4];
			oid[i*2+1] = hex[id[i] & 0xf];
		}
		FUNC3(L, FUNC4(7));
		FUNC2(L, oid, 24);

		return 2;
	}
	case BSON_DATE: {
		if (sz != 4) {
			return FUNC0(L, "Invalid date");
		}
		int d = *(const int *)buf;
		FUNC3(L, FUNC4(9));
		FUNC1(L, d);
		return 2;
	}
	case BSON_TIMESTAMP: {
		if (sz != 8) {
			return FUNC0(L, "Invalid timestamp");
		}
		const uint32_t * ts = (const uint32_t *)buf;
		FUNC3(L, FUNC4(8));
		FUNC1(L, (lua_Integer)ts[1]);
		FUNC1(L, (lua_Integer)ts[0]);
		return 3;
	}
	case BSON_REGEX: {
		--sz;
		size_t i;
		const uint8_t *str = buf;
		for (i=0;i<sz;i++) {
			if (str[sz-i-1]==0) {
				break;
			}
		}
		FUNC3(L, FUNC4(10));
		if (i==sz) {
			return FUNC0(L, "Invalid regex");
		}
		FUNC2(L, (const char *)str, sz - i - 1);
		FUNC2(L, (const char *)str+sz-i, i);
		return 3;
	}
	case BSON_MINKEY:
		FUNC3(L, FUNC4(11));
		return 1;
	case BSON_MAXKEY:
		FUNC3(L, FUNC4(12));
		return 1;
	case BSON_NULL:
		FUNC3(L, FUNC4(4));
		return 1;
	case BSON_JSCODE:
	case BSON_DBPOINTER:
	case BSON_SYMBOL:
	case BSON_CODEWS:
		FUNC3(L, FUNC4(13));
		FUNC2(L, (const char *)buf, sz);
		return 2;
	default:
		return FUNC0(L, "Invalid subtype %d", subtype);
	}
}