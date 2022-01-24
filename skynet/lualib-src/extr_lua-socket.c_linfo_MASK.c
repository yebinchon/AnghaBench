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
struct socket_info {struct socket_info* next; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct socket_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 struct socket_info* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct socket_info*) ; 

__attribute__((used)) static int
FUNC5(lua_State *L) {
	FUNC1(L);
	struct socket_info * si = FUNC3();
	struct socket_info * temp = si;
	int n = 0;
	while (temp) {
		FUNC0(L, temp);
		FUNC2(L, -2, ++n);
		temp = temp->next;
	}
	FUNC4(si);
	return 1;
}