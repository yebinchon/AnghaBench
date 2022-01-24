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
struct encode_ud {int tbl_index; scalar_t__ iter_key; scalar_t__ iter_table; scalar_t__ iter_func; scalar_t__ deep; scalar_t__ array_index; int /*<<< orphan*/ * array_tag; struct sproto_type* st; int /*<<< orphan*/ * L; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_TNIL ; 
 int /*<<< orphan*/  encode ; 
 void* FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,void*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int) ; 
 void* FUNC6 (int /*<<< orphan*/ *,int) ; 
 int FUNC7 (int) ; 
 int FUNC8 (struct sproto_type*,void*,int,int /*<<< orphan*/ ,struct encode_ud*) ; 

__attribute__((used)) static int
FUNC9(lua_State *L) {
	struct encode_ud self;
	void * buffer = FUNC6(L, FUNC7(1));
	int sz = FUNC5(L, FUNC7(2));
	int tbl_index = 2;
	struct sproto_type * st = FUNC6(L, 1);
	if (st == NULL) {
		FUNC1(L, tbl_index, LUA_TNIL);
		FUNC3(L, "");
		return 1;	// response nil
	}
	self.L = L;
	self.st = st;
	self.tbl_index = tbl_index;
	for (;;) {
		int r;
		self.array_tag = NULL;
		self.array_index = 0;
		self.deep = 0;

		FUNC4(L, tbl_index);
		self.iter_func = 0;
		self.iter_table = 0;
		self.iter_key = 0;

		r = FUNC8(st, buffer, sz, encode, &self);
		if (r<0) {
			buffer = FUNC0(L, sz, sz*2);
			sz *= 2;
		} else {
			FUNC2(L, buffer, r);
			return 1;
		}
	}
}