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
struct node {scalar_t__ keytype; int /*<<< orphan*/  key; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 scalar_t__ KEYTYPE_INTEGER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*,size_t) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t*) ; 

__attribute__((used)) static void
FUNC3(lua_State *L, lua_State *sL, struct node *n) {
	if (n->keytype == KEYTYPE_INTEGER) {
		FUNC0(L, n->key);
	} else {
		size_t sz = 0;
		const char * str = FUNC2(sL, n->key, &sz);
		FUNC1(L, str, sz);
	}
}