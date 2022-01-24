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
typedef  int /*<<< orphan*/  userdata ;
struct read_block {int dummy; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct read_block*) ; 
 int /*<<< orphan*/  FUNC1 (void**,void**,int) ; 
 scalar_t__ FUNC2 (struct read_block*,int) ; 

__attribute__((used)) static void *
FUNC3(lua_State *L, struct read_block *rb) {
	void * userdata = 0;
	void ** v = (void **)FUNC2(rb,sizeof(userdata));
	if (v == NULL) {
		FUNC0(L,rb);
	}
	FUNC1(&userdata, v, sizeof(userdata));
	return userdata;
}