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
typedef  int uint32_t ;
typedef  int uint16_t ;
struct read_block {int dummy; } ;
typedef  int /*<<< orphan*/  n ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
#define  TYPE_BOOLEAN 134 
#define  TYPE_LONG_STRING 133 
#define  TYPE_NIL 132 
#define  TYPE_NUMBER 131 
 int TYPE_NUMBER_REAL ; 
#define  TYPE_SHORT_STRING 130 
#define  TYPE_TABLE 129 
#define  TYPE_USERDATA 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct read_block*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct read_block*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct read_block*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct read_block*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct read_block*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int*,int*,int) ; 
 int* FUNC11 (struct read_block*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,struct read_block*,int) ; 

__attribute__((used)) static void
FUNC13(lua_State *L, struct read_block *rb, int type, int cookie) {
	switch(type) {
	case TYPE_NIL:
		FUNC8(L);
		break;
	case TYPE_BOOLEAN:
		FUNC5(L,cookie);
		break;
	case TYPE_NUMBER:
		if (cookie == TYPE_NUMBER_REAL) {
			FUNC9(L,FUNC3(L,rb));
		} else {
			FUNC6(L, FUNC1(L, rb, cookie));
		}
		break;
	case TYPE_USERDATA:
		FUNC7(L,FUNC2(L,rb));
		break;
	case TYPE_SHORT_STRING:
		FUNC0(L,rb,cookie);
		break;
	case TYPE_LONG_STRING: {
		if (cookie == 2) {
			uint16_t *plen = FUNC11(rb, 2);
			if (plen == NULL) {
				FUNC4(L,rb);
			}
			uint16_t n;
			FUNC10(&n, plen, sizeof(n));
			FUNC0(L,rb,n);
		} else {
			if (cookie != 4) {
				FUNC4(L,rb);
			}
			uint32_t *plen = FUNC11(rb, 4);
			if (plen == NULL) {
				FUNC4(L,rb);
			}
			uint32_t n;
			FUNC10(&n, plen, sizeof(n));
			FUNC0(L,rb,n);
		}
		break;
	}
	case TYPE_TABLE: {
		FUNC12(L,rb,cookie);
		break;
	}
	default: {
		FUNC4(L,rb);
		break;
	}
	}
}