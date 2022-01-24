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
struct sproto {int dummy; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 struct sproto** G_sproto ; 
 int MAX_GLOBALSPROTO ; 
 int FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct sproto* FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC3(lua_State *L) {
	struct sproto * sp = FUNC2(L, 1);
	int index = FUNC1(L, 2, 0);
	if (index < 0 || index >= MAX_GLOBALSPROTO) {
		return FUNC0(L, "Invalid global slot index %d", index);
	}
	/* TODO : release old object (memory leak now, but thread safe)*/
	G_sproto[index] = sp;
	return 0;
}