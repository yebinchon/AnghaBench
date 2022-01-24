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
struct decode_ud {int mainindex_tag; int /*<<< orphan*/  result_index; scalar_t__ key_index; scalar_t__ deep; int /*<<< orphan*/ * array_tag; scalar_t__ array_index; int /*<<< orphan*/ * L; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  decode ; 
 void* FUNC0 (int /*<<< orphan*/ *,int,size_t*) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct sproto_type* FUNC7 (int /*<<< orphan*/ *,int) ; 
 int FUNC8 (struct sproto_type*,void const*,int,int /*<<< orphan*/ ,struct decode_ud*) ; 

__attribute__((used)) static int
FUNC9(lua_State *L) {
	struct sproto_type * st = FUNC7(L, 1);
	const void * buffer;
	struct decode_ud self;
	size_t sz;
	int r;
	if (st == NULL) {
		// return nil
		return 0;
	}
	sz = 0;
	buffer = FUNC0(L, 2, &sz);
	if (!FUNC3(L, -1)) {
		FUNC4(L);
	}
	self.L = L;
	self.result_index = FUNC2(L);
	self.array_index = 0;
	self.array_tag = NULL;
	self.deep = 0;
	self.mainindex_tag = -1;
	self.key_index = 0;
	r = FUNC8(st, buffer, (int)sz, decode, &self);
	if (r < 0) {
		return FUNC1(L, "decode error");
	}
	FUNC6(L, self.result_index);
	FUNC5(L, r);
	return 2;
}