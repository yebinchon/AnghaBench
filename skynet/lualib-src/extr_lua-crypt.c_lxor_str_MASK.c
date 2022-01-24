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
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  luaL_Buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,size_t) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int,size_t*) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(lua_State *L) {
	size_t len1,len2;
	const char *s1 = FUNC2(L,1,&len1);
	const char *s2 = FUNC2(L,2,&len2);
	if (len2 == 0) {
		return FUNC3(L, "Can't xor empty string");
	}
	luaL_Buffer b;
	char * buffer = FUNC1(L, &b, len1);
	int i;
	for (i=0;i<len1;i++) {
		buffer[i] = s1[i] ^ s2[i % len2];
	}
	FUNC0(&b, len1);
	FUNC4(&b);
	return 1;
}