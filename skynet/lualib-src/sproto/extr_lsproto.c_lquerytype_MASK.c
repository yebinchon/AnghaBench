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
struct sproto_type {int dummy; } ;
struct sproto {int dummy; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int,char*) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct sproto_type*) ; 
 struct sproto* FUNC3 (int /*<<< orphan*/ *,int) ; 
 struct sproto_type* FUNC4 (struct sproto*,char const*) ; 

__attribute__((used)) static int
FUNC5(lua_State *L) {
	const char * type_name;
	struct sproto *sp = FUNC3(L,1);
	struct sproto_type *st;
	if (sp == NULL) {
		return FUNC0(L, 1, "Need a sproto object");
	}
	type_name = FUNC1(L,2);
	st = FUNC4(sp, type_name);
	if (st) {
		FUNC2(L, st);
		return 1;
	}
	return 0;
}