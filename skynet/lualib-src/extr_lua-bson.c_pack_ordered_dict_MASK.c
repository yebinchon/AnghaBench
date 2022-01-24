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
struct bson {scalar_t__ size; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bson*,int /*<<< orphan*/ *,char const*,size_t,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 char* FUNC4 (int /*<<< orphan*/ *,int,size_t*) ; 
 int FUNC5 (struct bson*) ; 
 int /*<<< orphan*/  FUNC6 (struct bson*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct bson*,scalar_t__,int) ; 

__attribute__((used)) static void
FUNC8(lua_State *L, struct bson *b, int n, int depth) {
	int length = FUNC5(b);
	int i;
	size_t sz;
	// the first key is at index n
	const char * key = FUNC4(L, n, &sz);
	for (i=0;i<n;i+=2) {
		if (key == NULL) {
			FUNC1(L, "Argument %d need a string", i+1);
		}
		FUNC3(L, i+1);
		FUNC0(b, L, key, sz, depth);
		FUNC2(L,1);
		key = FUNC4(L, i+2, &sz);	// next key
	}
	FUNC6(b,0);
	FUNC7(b, b->size - length, length);
}