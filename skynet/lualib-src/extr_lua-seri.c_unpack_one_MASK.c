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
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  type ;
struct read_block {int dummy; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct read_block*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct read_block*,int,int) ; 
 int* FUNC2 (struct read_block*,int) ; 

__attribute__((used)) static void
FUNC3(lua_State *L, struct read_block *rb) {
	uint8_t type;
	uint8_t *t = FUNC2(rb, sizeof(type));
	if (t==NULL) {
		FUNC0(L, rb);
	}
	type = *t;
	FUNC1(L, rb, type & 0x7, type>>3);
}