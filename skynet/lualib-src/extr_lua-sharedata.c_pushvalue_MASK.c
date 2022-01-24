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
union value {int /*<<< orphan*/  tbl; int /*<<< orphan*/  boolean; int /*<<< orphan*/  string; int /*<<< orphan*/  d; int /*<<< orphan*/  n; } ;
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
#define  VALUETYPE_BOOLEAN 132 
#define  VALUETYPE_INTEGER 131 
#define  VALUETYPE_REAL 130 
#define  VALUETYPE_STRING 129 
#define  VALUETYPE_TABLE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t*) ; 

__attribute__((used)) static void
FUNC7(lua_State *L, lua_State *sL, uint8_t vt, union value *v) {
	switch(vt) {
	case VALUETYPE_REAL:
		FUNC5(L, v->n);
		break;
	case VALUETYPE_INTEGER:
		FUNC1(L, v->d);
		break;
	case VALUETYPE_STRING: {
		size_t sz = 0;
		const char *str = FUNC6(sL, v->string, &sz);
		FUNC3(L, str, sz);
		break;
	}
	case VALUETYPE_BOOLEAN:
		FUNC0(L, v->boolean);
		break;
	case VALUETYPE_TABLE:
		FUNC2(L, v->tbl);
		break;
	default:
		FUNC4(L);
		break;
	}
}