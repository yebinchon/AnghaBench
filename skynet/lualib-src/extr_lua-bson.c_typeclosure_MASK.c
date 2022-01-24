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
typedef  int /*<<< orphan*/  typename ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  ltype ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static void
FUNC2(lua_State *L) {
	static const char * typename[] = {
		"number",	// 1
		"boolean",	// 2
		"table",	// 3
		"nil",		// 4
		"string",	// 5
		"binary",	// 6
		"objectid",	// 7
		"timestamp",    // 8
		"date",		// 9
		"regex",	// 10
		"minkey",	// 11
		"maxkey",	// 12
		"unsupported", // 13
	};
	int i;
	int n = sizeof(typename)/sizeof(typename[0]);
	for (i=0;i<n;i++) {
		FUNC1(L,typename[i]);
	}
	FUNC0(L, ltype, n);
}