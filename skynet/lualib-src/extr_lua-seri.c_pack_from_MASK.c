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
struct write_block {int dummy; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct write_block*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(lua_State *L, struct write_block *b, int from) {
	int n = FUNC0(L) - from;
	int i;
	for (i=1;i<=n;i++) {
		FUNC1(L, b , from + i, 0);
	}
}