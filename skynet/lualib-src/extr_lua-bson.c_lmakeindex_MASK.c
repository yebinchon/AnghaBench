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
struct bson_reader {scalar_t__ size; int /*<<< orphan*/  const* ptr; int /*<<< orphan*/  member_1; int /*<<< orphan*/  const* member_0; } ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
#define  BSON_ARRAY 146 
#define  BSON_BINARY 145 
#define  BSON_BOOLEAN 144 
#define  BSON_CODEWS 143 
#define  BSON_DATE 142 
#define  BSON_DBPOINTER 141 
#define  BSON_DOCUMENT 140 
#define  BSON_INT32 139 
#define  BSON_INT64 138 
#define  BSON_JSCODE 137 
#define  BSON_MAXKEY 136 
#define  BSON_MINKEY 135 
#define  BSON_NULL 134 
#define  BSON_OBJECTID 133 
#define  BSON_REAL 132 
#define  BSON_REGEX 131 
#define  BSON_STRING 130 
#define  BSON_SYMBOL 129 
#define  BSON_TIMESTAMP 128 
 int BSON_TYPE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int FUNC10 (int /*<<< orphan*/ *,struct bson_reader*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,struct bson_reader*,int) ; 
 char* FUNC12 (int /*<<< orphan*/ *,struct bson_reader*,size_t*) ; 
 int FUNC13 (int /*<<< orphan*/ *,struct bson_reader*) ; 

__attribute__((used)) static int
FUNC14(lua_State *L) {
	int32_t *bson = FUNC1(L,1,"bson");
	const uint8_t * start = (const uint8_t *)bson;
	struct bson_reader br = { start+4, FUNC0(start) - 5 };
	FUNC3(L);

	for (;;) {
		if (br.size == 0)
			break;
		int bt = FUNC10(L, &br);
		size_t klen = 0;
		const char * key = FUNC12(L, &br, &klen);
		int field_size = 0;
		switch (bt) {
		case BSON_INT64:
		case BSON_TIMESTAMP: 
		case BSON_DATE:
		case BSON_REAL:
			field_size = 8;
			break;
		case BSON_BOOLEAN:
			field_size = 1;
			break;
		case BSON_JSCODE:
		case BSON_SYMBOL: 
		case BSON_STRING: {
			int sz = FUNC13(L, &br);
			FUNC11(L, &br, sz);
			break;
		}
		case BSON_CODEWS:
		case BSON_ARRAY:
		case BSON_DOCUMENT: {
			int sz = FUNC13(L, &br);
			FUNC11(L, &br, sz-4);
			break;
		}
		case BSON_BINARY: {
			int sz = FUNC13(L, &br);
			FUNC11(L, &br, sz+1);
			break;
		}
		case BSON_OBJECTID:
			field_size = 12;
			break;
		case BSON_MINKEY:
		case BSON_MAXKEY:
		case BSON_NULL:
			break;
		case BSON_REGEX: {
			size_t rlen1=0;
			size_t rlen2=0;
			FUNC12(L, &br, &rlen1);
			FUNC12(L, &br, &rlen2);
			break;
		}
		case BSON_INT32:
			field_size = 4;
			break;
		case BSON_DBPOINTER: {
			int sz = FUNC13(L, &br);
			FUNC11(L, &br, sz+12);
			break;
		}
		default:
			// unsupported
			FUNC2(L, "Invalid bson type : %d", bt);
			FUNC4(L,1);
			continue;
		}
		if (field_size > 0) {
			int id = bt | (int)(br.ptr - start) << BSON_TYPE_SHIFT;
			FUNC11(L, &br, field_size);
			FUNC6(L, key, klen);
			FUNC5(L,id);
			FUNC7(L,-3);
		}
	}
	FUNC9(L,1);
	FUNC8(L,1);

	return 1;
}